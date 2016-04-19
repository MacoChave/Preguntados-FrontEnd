
package logica;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para pregunta complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="pregunta">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="cod_curso" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="cod_nivel" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="estado" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *         &lt;element name="pregunta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "pregunta", propOrder = {
    "codCurso",
    "codNivel",
    "estado",
    "pregunta"
})
public class Pregunta {

    @XmlElement(name = "cod_curso")
    protected int codCurso;
    @XmlElement(name = "cod_nivel")
    protected int codNivel;
    protected boolean estado;
    protected String pregunta;

    /**
     * Obtiene el valor de la propiedad codCurso.
     * 
     */
    public int getCodCurso() {
        return codCurso;
    }

    /**
     * Define el valor de la propiedad codCurso.
     * 
     */
    public void setCodCurso(int value) {
        this.codCurso = value;
    }

    /**
     * Obtiene el valor de la propiedad codNivel.
     * 
     */
    public int getCodNivel() {
        return codNivel;
    }

    /**
     * Define el valor de la propiedad codNivel.
     * 
     */
    public void setCodNivel(int value) {
        this.codNivel = value;
    }

    /**
     * Obtiene el valor de la propiedad estado.
     * 
     */
    public boolean isEstado() {
        return estado;
    }

    /**
     * Define el valor de la propiedad estado.
     * 
     */
    public void setEstado(boolean value) {
        this.estado = value;
    }

    /**
     * Obtiene el valor de la propiedad pregunta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPregunta() {
        return pregunta;
    }

    /**
     * Define el valor de la propiedad pregunta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPregunta(String value) {
        this.pregunta = value;
    }

}
