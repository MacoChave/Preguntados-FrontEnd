
package logica;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para crearRespuesta complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="crearRespuesta">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="pregunta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="opcion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="correcta" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "crearRespuesta", propOrder = {
    "pregunta",
    "opcion",
    "correcta"
})
public class CrearRespuesta {

    protected String pregunta;
    protected String opcion;
    protected boolean correcta;

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

    /**
     * Obtiene el valor de la propiedad opcion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOpcion() {
        return opcion;
    }

    /**
     * Define el valor de la propiedad opcion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOpcion(String value) {
        this.opcion = value;
    }

    /**
     * Obtiene el valor de la propiedad correcta.
     * 
     */
    public boolean isCorrecta() {
        return correcta;
    }

    /**
     * Define el valor de la propiedad correcta.
     * 
     */
    public void setCorrecta(boolean value) {
        this.correcta = value;
    }

}
