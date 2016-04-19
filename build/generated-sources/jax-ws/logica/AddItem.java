
package logica;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para addItem complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="addItem">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="descripcion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="rareza" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="efectividad" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="bGana" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="bPierde" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="tipo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "addItem", propOrder = {
    "nombre",
    "descripcion",
    "rareza",
    "efectividad",
    "bGana",
    "bPierde",
    "tipo"
})
public class AddItem {

    protected String nombre;
    protected String descripcion;
    protected int rareza;
    protected int efectividad;
    protected int bGana;
    protected int bPierde;
    protected String tipo;

    /**
     * Obtiene el valor de la propiedad nombre.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Define el valor de la propiedad nombre.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombre(String value) {
        this.nombre = value;
    }

    /**
     * Obtiene el valor de la propiedad descripcion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * Define el valor de la propiedad descripcion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescripcion(String value) {
        this.descripcion = value;
    }

    /**
     * Obtiene el valor de la propiedad rareza.
     * 
     */
    public int getRareza() {
        return rareza;
    }

    /**
     * Define el valor de la propiedad rareza.
     * 
     */
    public void setRareza(int value) {
        this.rareza = value;
    }

    /**
     * Obtiene el valor de la propiedad efectividad.
     * 
     */
    public int getEfectividad() {
        return efectividad;
    }

    /**
     * Define el valor de la propiedad efectividad.
     * 
     */
    public void setEfectividad(int value) {
        this.efectividad = value;
    }

    /**
     * Obtiene el valor de la propiedad bGana.
     * 
     */
    public int getBGana() {
        return bGana;
    }

    /**
     * Define el valor de la propiedad bGana.
     * 
     */
    public void setBGana(int value) {
        this.bGana = value;
    }

    /**
     * Obtiene el valor de la propiedad bPierde.
     * 
     */
    public int getBPierde() {
        return bPierde;
    }

    /**
     * Define el valor de la propiedad bPierde.
     * 
     */
    public void setBPierde(int value) {
        this.bPierde = value;
    }

    /**
     * Obtiene el valor de la propiedad tipo.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Define el valor de la propiedad tipo.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipo(String value) {
        this.tipo = value;
    }

}
