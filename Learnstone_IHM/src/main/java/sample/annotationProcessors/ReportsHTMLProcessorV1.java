package sample.annotationProcessors;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.RoundEnvironment;
import javax.annotation.processing.SupportedAnnotationTypes;
import javax.annotation.processing.SupportedSourceVersion;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;

import sample.annotation.*;

@SupportedAnnotationTypes(value = {"sample.annotation.Reports","sample.annotation.Report"})
@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class ReportsHTMLProcessorV1 extends AbstractProcessor{

    private List<Report> list = new ArrayList<>();
    FileOutputStream fw = null;
    private List<Element> listElement = new ArrayList<>();

    @Override
    public boolean process(
            Set<? extends TypeElement> annotations,
            RoundEnvironment roundEnv) {

        System.out.println("Start of HTML Treatment !");
        for (TypeElement te : annotations) {

            for (Element element : roundEnv.getElementsAnnotatedWith(te)) {
                Reports reports = element.getAnnotation(Reports.class);

                if(reports != null){
                    System.out.println("Annotation Reports found.");
                    listElement.add(element);
                    for(Report report : reports.value())
                        this.addToList(report);
                }
                else{
                    System.out.println("Annotation Report found.");
                    listElement.add(element);
                    Report report = element.getAnnotation(Report.class);
                    this.addToList(report);
                }
            }
        }
        System.out.println("End of HTML Treatment");

        genererHTML(list, listElement);
        return true;
    }

    private void addToList(Report report){
        if(report != null)
            this.list.add(report);
    }

    private void genererHTML(List<Report> list, List<Element> listElement){

        StringBuilder html = new StringBuilder();
        html.append("<html>");
        html.append("<body>");
        html.append("<table>");

        html.append("<tr>");
        html.append("<td style=\"border:1px solid black\">Critical Level </td>");
        html.append("<td style=\"border:1px solid black\">Type of the Element</td>");
        html.append("<td style=\"border:1px solid black\">Element concerned </td>");
        html.append("<td style=\"border:1px solid black\">Enclosed element </td>");
        html.append("<td style=\"border:1px solid black\">as type </td>");
        html.append("<td style=\"border:1px solid black\">Enclosing element </td>");
        html.append("<td style=\"border:1px solid black\">Author </td>");
        html.append("<td style=\"border:1px solid black\">Recipient </td>");
        html.append("<td style=\"border:1px solid black\">Commentary </td>");
        html.append("</tr>");

        Iterator<Report>  it = list.iterator();

        if(list.isEmpty())return;

        File htmlFile = new File("Report.html");

        try {
            fw = new FileOutputStream(htmlFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        int index = 0;
        while(it.hasNext()){

            Report report = it.next();
            String style = "";
            switch(report.level().getLevel()){
                case 0 :
                    style = "style=\"color:green;border:1px solid black\"";
                    break;
                case 1:
                    style = "style=\"color:purple;border:1px solid black\"";
                    break;
                case 2:
                    style = "style=\"color:orange;border:1px solid black\"";
                    break;
                case 3:
                    style = "style=\"color:red;border:1px solid black\"";
                    break;
            }
            html.append("<tr>");
            html.append("<td " + style + ">" + report.level() + "</td>");
            if(index < listElement.size()) {
                html.append("<td " + style + ">" + listElement.get(index).getKind() + "</td>");
                html.append("<td " + style + ">" + listElement.get(index).getSimpleName() + "</td>");
                html.append("<td " + style + ">" + listElement.get(index).getEnclosedElements() + "</td>");
                html.append("<td " + style + ">" + listElement.get(index).asType() + "</td>");
                html.append("<td " + style + ">" + listElement.get(index).getEnclosingElement() + "</td>");
            }else {
                html.append("<td " + style + "></td>");
                html.append("<td " + style + "></td>");
                html.append("<td " + style + "></td>");
                html.append("<td " + style + "></td>");
                html.append("<td " + style + "></td>");
            }
            html.append("<td " + style + ">" + report.author() + "</td>");
            html.append("<td " + style + ">" + report.recipient() + "</td>");
            html.append("<td " + style + ">" + report.commentary() + "</td>");
            html.append("</tr>");
            index++;
        }

        html.append("</table>");
        html.append("</body>");
        html.append("</html>");

        try {
            fw.write(html.toString().getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try{
                fw.close();
            } catch (IOException ex) {
                ex.printStackTrace();

            }
        }
    }
}