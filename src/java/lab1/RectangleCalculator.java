
package lab1;

/**
 *
 * @author jkramer26
 */
public class RectangleCalculator {
    private double area;
    
    public double getArea(String length, String width) {
        area = Double.parseDouble(length) * Double.parseDouble(width); 
        return area; 
    }
    
    
}
