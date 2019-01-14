/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mamifero;

import java.util.UUID;

/**
 *
 * @author edgar
 */
public class Persona {
    
    private String nombre;
    private int edad;
    private String NSS;
    private char sexo = HOMBRE; //definimos por defecto hombre
    private float peso;
    private float altura;
    
    public static final char HOMBRE = 'H';
    public static final char MUJER = 'M';
    public static final int PESO_BAJO   = -1;
    public static final int PESO_IDEAL  = 0;
    public static final int PESO_ALTO   = 1;
    
    public Persona(){
        NSS = generarNSS();
    }
    
    public Persona(String nombre, int edad, char sexo){
        this();
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
    }
    
    public Persona(String nombre, int edad, char sexo, float peso, float altura){
        this(nombre, edad, sexo);
        this.peso = peso;
        this.altura = altura;
    }
    
    public int calcularIMC(){
        double IMC;
        IMC = this.peso / (this.altura*this.altura);
        System.out.println("1");                
            switch(this.sexo){
                case HOMBRE:
                    if(IMC < 20){return PESO_BAJO;}
                    else if(IMC > 25){return PESO_ALTO;}
                    else{return PESO_IDEAL;}
                case MUJER:
                    if(IMC < 20){return PESO_BAJO;}
                    else if(IMC > 24){return PESO_ALTO;}
                    else{return PESO_IDEAL;}
                default:
                    return -2;
            } 
    }
    
    private String generarNSS(){        
        String NSS = "";
        NSS = UUID.randomUUID().toString().replace("-", "").toUpperCase().substring(0, 8);
        return NSS;
    }
    
    public boolean esMayorDeEdad(){
        return this.edad >= 18;
    }
    
    private boolean comprobarSexo(char sexo){
        return sexo == HOMBRE || sexo == MUJER;
    }
    
    public String toString(){
        return  "Nombre: "  + this.nombre   + "\n" +
                "Edad: "    + this.edad     + "\n" +
                "NSS: "     + this.NSS      + "\n" +
                "Sexo: "    + this.sexo     + "\n" +
                "Peso: "    + this.peso     + "\n" +
                "Altura: "  + this.altura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

}
