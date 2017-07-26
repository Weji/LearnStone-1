package sample.annotationProcessors;

import java.util.Set;
import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.RoundEnvironment;
import javax.annotation.processing.SupportedAnnotationTypes;
import javax.annotation.processing.SupportedSourceVersion;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;

import sample.annotation.Report;


@SupportedAnnotationTypes({"sample.annotation.Report"})
@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class ReportProcessor extends AbstractProcessor {

    @Override
    public boolean process(
            Set<? extends TypeElement> annotations,
            RoundEnvironment roundEnv) {

        System.out.println("Start of annotation parser !");

        for (TypeElement te : annotations) {
            System.out.println("Treating annotations.. "
                    + te.getQualifiedName());

            //Allow to receive all element annotated from the actual annotation
            for (Element element : roundEnv.getElementsAnnotatedWith(te)) {

                System.out.println("----------------------------------");
                //Allow to know which type of element is annotated (constructor, parameter, class ...)
                System.out.println("\n Type of the element annotated: " + element.getKind() + "\n");

                //return the name of the element annotated, the name of the variable, the name of the class..
                System.out.println("\t --> Treatment of the element : "+ element.getSimpleName() + "\n");

                //Differents informations about the element annotated
                System.out.println("enclosed elements : " + element.getEnclosedElements());
                System.out.println("as type : " + element.asType());
                System.out.println("enclosing element : " + element.getEnclosingElement() + "\n");




                //We retrieve our annotation
                Report report = element.getAnnotation(Report.class);

                //if she isnt null, we treat her content
                if (report != null) {

                    //we retreive her content
                    System.out.println("\t\t Author : " + report.author());
                    System.out.println("\t\t Recipient : " + report.recipient());
                    System.out.println("\t\t Commentary : " + report.commentary());
                    System.out.println("\t\t Level : " + report.level());
                }
            }
        }
        return true;
    }
}
