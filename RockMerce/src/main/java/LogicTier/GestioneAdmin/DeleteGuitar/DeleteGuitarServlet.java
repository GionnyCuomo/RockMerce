package LogicTier.GestioneAdmin.DeleteGuitar;

import LogicTier.Entità.Guitar;
import LogicTier.GestioneGuitars.GuitarService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/DeleteGuitarServlet")
public class DeleteGuitarServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String address="/PresentationTier/AdminGUI/DeleteGuitarGUI/DeleteGuitarChoose.jsp";

        GuitarService guitarService=new GuitarService();
        ArrayList<Guitar> guitars=guitarService.adminRetrieveGuitars();
        request.setAttribute("guitars",guitars);

        RequestDispatcher dispatcher= request.getRequestDispatcher(address);
        dispatcher.forward(request,response);

    }
}
