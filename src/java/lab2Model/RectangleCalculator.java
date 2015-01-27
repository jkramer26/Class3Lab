
package lab2Model;

/**
 *
 * @author owner
 */
public class RectangleCalculator {
    private double area;
    
    public String getArea(String length, String width) {
        area = Double.parseDouble(length) * Double.parseDouble(width); 
        String areaString = Double.toString(area);
        return areaString; 
    }
}
