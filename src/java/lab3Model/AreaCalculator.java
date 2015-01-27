
package lab3Model;

/**
 *
 * @author owner
 */
public class AreaCalculator {
    private double area;  //variable to hold the calculated area 
    
    /**
     * This method calculate the area of a rectangle based on length & width. 
     * 
     * @param length Values passed in as string
     * @param width Values passed in as string
     * @return Will return the area as a string
     */
    public String getRectangleArea(String length, String width) {
        area = Double.parseDouble(length) * Double.parseDouble(width); 
        String areaString = Double.toString(area);
        return areaString; 
    }
    
    /**
     * This method calculate the area of a circle based on its radius
     * 
     * @param radius Value passed in as string
     * @return Will return area as a string
     */
    public String getCircleArea(String radius) {
        double doubleRadius = Double.parseDouble(radius);
        area = Math.PI * (doubleRadius * doubleRadius); 
        String areaString = Double.toString(area);
        return areaString; 
    }
    
    /**
     * This method calculates the area of a triangle based on its height & base
     * 
     * @param height Passes in value as string
     * @param base Passes in value as string
     * @return Returns area as a string
     */
    public String getTriangleArea(String height, String base) {
        area = (Double.parseDouble(height) * Double.parseDouble(base)) / 2;
        String areaString = Double.toString(area);
        return areaString; 
    }
}
