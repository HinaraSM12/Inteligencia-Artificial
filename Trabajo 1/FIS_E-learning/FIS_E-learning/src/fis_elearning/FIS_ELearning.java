/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package fis_elearning;

import interfaz.ELearningUI;
import net.sourceforge.jFuzzyLogic.FIS;
import net.sourceforge.jFuzzyLogic.plot.JFuzzyChart;
//import net.sourceforge.jFuzzyLogic.rule.Rule;
//import net.sourceforge.jFuzzyLogic.rule.Variable;

/**
 *
 * @author USER
 */
public class FIS_ELearning {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ELearningUI e = new ELearningUI();
        e.setVisible(true);

    }
        
    public String calcularCostoYDuracion(double seleccion, double satisfaccion, double dificultad) {
        // Carga el archivo de lenguaje de control difuso 'FCL'
        String fileName = "src/fis_elearning/FCL_Elearning.fcl";
        FIS fis = FIS.load(fileName, true);
        
        // En caso de error
        if (fis == null) {
            System.err.println("No se puede cargar el archivo: '" + fileName + "'");
            return "";
        }
        
        // Establecer las entradas del sistema
        fis.setVariable("seleccion", seleccion);
        fis.setVariable("satisfaccion", satisfaccion);
        fis.setVariable("dificultad", dificultad);

        // Inicia el funcionamiento del sistema
        fis.evaluate();

        // Muestra los gráficos de las variables de entrada y salida
        JFuzzyChart.get().chart(fis.getFunctionBlock("elearning"));
        
        /*
        // Muestra el conjunto difuso sobre el que se calcula el COG
        Variable tip = fis.getVariable("propina");
        JFuzzyChart.get().chart(tip, tip.getDefuzzifier(), true);
        */
             
        // Imprime el valor concreto de salida del sistema
        double salida1 = fis.getVariable("costo").getLatestDefuzzifiedValue();
        double salida2 = fis.getVariable("duracion").getLatestDefuzzifiedValue();
        // System.out.println("Para los valores de entrada el costo aproximado del curso es: " + String.format("%.2f", salida1) + "\n");
        // System.out.println("Para los valores de entrada la duraciOn del curso recomendada es: " + String.format("%.2f", salida2) + "\n");
        
        
        /*
        // Muestra las reglas y el valor de salida de cada una despues de aplicar las operaciones lógicas
        fis.getFunctionBlock("tipper").getFuzzyRuleBlock("No1").getRules().forEach(r -> {
            System.out.println(r);
        });
        System.out.println();
        */
        
        /*
        // Muestra el grado de pertenencia de la variable de salida a cada CD
        double pertenenciaBaja = fis.getVariable("propina").getMembership("baja");
        double pertenenciaPromedio = fis.getVariable("propina").getMembership("promedio");
        double pertenenciaGenerosa = fis.getVariable("propina").getMembership("generosa");
        
        System.out.println("La propina es baja con grado de pertenencia " + pertenenciaBaja);
        System.out.println("La propina es promedio con grado de pertenencia " + pertenenciaPromedio);
        System.out.println("La propina es generosa con grado de pertenencia " + pertenenciaGenerosa);
        */
        
        // Muestra cuanto peso tiene la variable de salida en cada CD de salida
        double pertenenciaCostoMuyBajo = fis.getVariable("costo").getMembership("muy_bajo");
        double pertenenciaCostoBajo = fis.getVariable("costo").getMembership("bajo");
        double pertenenciaCostoMedio = fis.getVariable("costo").getMembership("medio");
        double pertenenciaCostoAlto = fis.getVariable("costo").getMembership("alto");
        
        String costoAproximado = "";
        
        if (pertenenciaCostoMuyBajo >= pertenenciaCostoBajo && 
                pertenenciaCostoMuyBajo >= pertenenciaCostoMedio && 
                pertenenciaCostoMuyBajo >= pertenenciaCostoAlto) {
            costoAproximado = "muy_bajo";
        } else if (pertenenciaCostoBajo >= pertenenciaCostoMuyBajo && 
                pertenenciaCostoBajo >= pertenenciaCostoMedio && 
                pertenenciaCostoBajo >= pertenenciaCostoAlto) {
            costoAproximado = "bajo";
        } else if (pertenenciaCostoMedio >= pertenenciaCostoMuyBajo && 
                pertenenciaCostoMedio >= pertenenciaCostoBajo && 
                pertenenciaCostoMedio >= pertenenciaCostoAlto) {
            costoAproximado = "medio";
        } else if (pertenenciaCostoAlto >= pertenenciaCostoMuyBajo && 
                pertenenciaCostoAlto >= pertenenciaCostoBajo && 
                pertenenciaCostoAlto >= pertenenciaCostoMedio) {
            costoAproximado = "alto";
        }
        
        double pertenenciaDuracionMuyCorta = fis.getVariable("duracion").getMembership("muy_corta");
        double pertenenciaDuracionCorta = fis.getVariable("duracion").getMembership("corta");
        double pertenenciaDuracionMedia = fis.getVariable("duracion").getMembership("media");
        double pertenenciaDuracionLarga = fis.getVariable("duracion").getMembership("larga");
        double pertenenciaDuracionMuyLarga = fis.getVariable("duracion").getMembership("muy_larga");  
        
        String recomendacion = "";
        
        if (pertenenciaDuracionMuyCorta >= pertenenciaDuracionCorta && 
                pertenenciaDuracionMuyCorta >= pertenenciaDuracionMedia && 
                pertenenciaDuracionMuyCorta >= pertenenciaDuracionLarga && 
                pertenenciaDuracionMuyCorta >= pertenenciaDuracionMuyLarga) {
            recomendacion = "muy_corta";
        } else if (pertenenciaDuracionCorta >= pertenenciaDuracionMuyCorta && 
                pertenenciaDuracionCorta >= pertenenciaDuracionMedia && 
                pertenenciaDuracionCorta >= pertenenciaDuracionLarga && 
                pertenenciaDuracionCorta >= pertenenciaDuracionMuyLarga) {
            recomendacion = "corta";
        } else if (pertenenciaDuracionMedia >= pertenenciaDuracionMuyCorta &&
                pertenenciaDuracionMedia >= pertenenciaDuracionCorta && 
                pertenenciaDuracionMedia >= pertenenciaDuracionLarga && 
                pertenenciaDuracionMedia >= pertenenciaDuracionMuyLarga) {
            recomendacion = "media";
        } else if (pertenenciaDuracionLarga >= pertenenciaDuracionMuyCorta &&
                pertenenciaDuracionLarga >= pertenenciaDuracionCorta && 
                pertenenciaDuracionLarga >= pertenenciaDuracionMedia && 
                pertenenciaDuracionLarga >= pertenenciaDuracionMuyLarga) {
            recomendacion = "larga";
        } else if (pertenenciaDuracionMuyLarga >= pertenenciaDuracionMuyCorta &&
                pertenenciaDuracionMuyLarga >= pertenenciaDuracionCorta && 
                pertenenciaDuracionMuyLarga >= pertenenciaDuracionMedia && 
                pertenenciaDuracionMuyLarga >= pertenenciaDuracionLarga) {
            recomendacion = "media";
        }
        
        // Muestra las reglas activadas y el valor de salida de cada una despues de aplicar las operaciones lógicas
        StringBuilder reglasUsadas = new StringBuilder();
        reglasUsadas.append("Reglas Usadas:\n");
        fis.getFunctionBlock("elearning").getFuzzyRuleBlock("No1").getRules().stream().filter(r -> (r.getDegreeOfSupport() > 0)).forEachOrdered(r -> {
            reglasUsadas.append(r.toString()).append("\n");
        });
        
        return ("Para los valores de entrada el costo aproximado del curso es: " + costoAproximado + " " + String.format("%.2f", salida1) + "\n" +
                "Para los valores de entrada la duracion del curso recomendada es: " + recomendacion + " " + String.format("%.2f", salida2) + "\n"+
                "\n" + reglasUsadas.toString());
        
    }
    
}
