/*
 * Should only be using one controller for calculator. The other 3 seperate ones violate single responsiblity principle and should not be used. 
 */
package lab3Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3Model.AreaCalculator;

/**
 *
 * @author jkramer26
 */
@WebServlet(name = "CalcController", urlPatterns = {"/CalcControl"})
public class CalculatorController extends HttpServlet {

    //this is the page information will be forwarded to
    private static final String RESULT_PAGE = "/Lab3/Lab3_FormsResults.jsp";

    //defining what the key is within the query string
    private static String KEY = "calcType";
    //setting variables for the different type of calculators 
    private static String TRIANGLE_TYPE = "triangle";
    private static String RECTANGLE_TYPE = "rectangle";
    private static String CIRCLE_TYPE = "circle";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        //setting a variable equal to the key variable defined above
        String type = request.getParameter(KEY);

        //we are checking to see which value was set to key in query string
        if (TRIANGLE_TYPE.equals(type)) {
            //retrieve values from form
            String height = request.getParameter("height");
            String base = request.getParameter("base");

            //Create new instance of model
            AreaCalculator ac = new AreaCalculator();

            //call method from model to calculate area with retrieved values
            //set the result of the calculation into the result variable
            String result = ac.getTriangleArea(height, base);

            //set the attribute with the calculated result
            request.setAttribute("triangleArea", result);
        } else if (RECTANGLE_TYPE.equals(type)) {
            //retrieve values from form
            String length = request.getParameter("length");
            String width = request.getParameter("width");

            //Create new instance of model
            AreaCalculator ac = new AreaCalculator();

            //call method from model to calculate area with retrieved values
            //set the result of the calculation into the result variable
            String result = ac.getRectangleArea(length, width);

            //set the attribute with the calculated result
            request.setAttribute("rectangleArea", result);
        } else if (CIRCLE_TYPE.equals(type)) {
            //retrieve values from form
            String radius = request.getParameter("radius");

            //Create new instance of model
            AreaCalculator ac = new AreaCalculator();

            //call method from model to calculate area with retrieved values
            //set the result of the calculation into the result variable
            String result = ac.getCircleArea(radius);

            //set the attribute with the calculated result
            request.setAttribute("circleArea", result);
        }

        //forwards the data to the result page 
        RequestDispatcher view
                = request.getRequestDispatcher(RESULT_PAGE);
        //forwarding the request and response
        view.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
