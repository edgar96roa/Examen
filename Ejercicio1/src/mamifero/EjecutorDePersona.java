/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mamifero;

import java.util.Scanner;

/**
 *
 * @author edgar
 */
public class EjecutorDePersona {
    
    public static void main(String [] args){
        Scanner teclado = new Scanner(System.in);
        System.out.println("Por favor, ingrese los siguientes datos.");
        
        System.out.println("Nombre: ");
        String nombre = teclado.nextLine();
        
        System.out.println("Edad: ");
        int edad = teclado.nextInt();
        
        System.out.println("Sexo (H/M) :");
        char sexo = teclado.next().toUpperCase().charAt(0);
        
        System.out.println("Peso: ");
        float peso = teclado.nextFloat();
        
        System.out.println("Altura :");
        float altura = teclado.nextFloat();
        
        
        Persona persona1 = new Persona(nombre, edad, sexo, peso, altura);
        Persona persona2 = new Persona(nombre, edad, sexo);
        Persona persona3 = new Persona();
        
        persona3.setNombre(nombre);
        persona3.setEdad(edad);
        persona3.setSexo(sexo);
        persona3.setPeso(peso);
        persona3.setAltura(altura);
        
        System.out.println("\nDatos de las personas.\n");
        
        System.out.println(persona1);
        persona1.calcularIMC();
        comprobarPeso(persona1);
        mayorDeEdad(persona1);
        
        System.out.println();
        System.out.println(persona2);
        comprobarPeso(persona2);
        mayorDeEdad(persona2);
        
        System.out.println();
        System.out.println(persona3);
        comprobarPeso(persona3);
        mayorDeEdad(persona3);
        
    } 
   
    public static void mayorDeEdad(Persona persona){
        System.out.println(persona.esMayorDeEdad() ? "Mayor de edad" : "Menor de edad");
    }
    
    public static StringBuilder comprobarPeso(Persona persona){
        StringBuilder mensaje = new StringBuilder();
        switch(persona.calcularIMC()){
            case Persona.PESO_ALTO:
                System.out.println(mensaje.append("Sobrepeso"));
            break;
            case Persona.PESO_BAJO:
                System.out.println(mensaje.append("Peso bajo"));
            break;
            case Persona.PESO_IDEAL:
                System.out.println(mensaje.append("Peso ideal"));
            break;
            default:
                System.out.println(mensaje.append("Peso no encontrado"));
            break;
        }
        return mensaje;
    }
}
