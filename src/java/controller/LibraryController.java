
package controller;

import entity.Book;
import entity.Reader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "LibraryController", urlPatterns = {
    "/book",//Шаблоны запроса, которые отлавливает сервлет
    "/reader",
    "/showNewBook",
    "/createBook",
    "/showNewReader",
    "/createReader",
})
public class LibraryController extends HttpServlet {
   List<Book> listBooks = new ArrayList<>();
   List<Reader> listReaders = new ArrayList<>();
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        switch (path) {
            case "/book":
                Book book = new Book(); //Инициация объекта книги
                book.setId(1L);
                book.setName("Война и мир");
                book.setAuthor("Л.Толстой");
                book.setYear(2010);
                request.setAttribute("book", book); // Создание переменной book в контексте обработки jsp
                request.getRequestDispatcher("/index.jsp")
                .forward(request, response); // Формирование ответа браузеру
                break;
            case "/reader":
                Reader reader = new Reader(1L, "Иван", "Иванов", 2003);
                request.setAttribute("reader", reader);
                request.getRequestDispatcher("/index.jsp")
                    .forward(request, response);
                break;
            case "/showNewBook":
                request.getRequestDispatcher("/NewBook.jsp")
                    .forward(request, response);
                break;
            case "/createBook":
                String name = request.getParameter("name");
                String author = request.getParameter("author");
                String year = request.getParameter("year");
                book = new Book(1L, name, author, new Integer(year));
                listBooks.add(book);
                request.setAttribute("listBooks", listBooks); 
                request.getRequestDispatcher("/index.jsp")
                    .forward(request, response);
                break;
            case "/showNewReader":
                request.getRequestDispatcher("/NewReader.jsp")
                    .forward(request, response);
                break;
            case "/createReader":
                name = request.getParameter("name");
                String surname = request.getParameter("surname");
                year = request.getParameter("year");
                reader = new Reader(1L, name, surname, new Integer(year));
                listReaders.add(reader);
                request.setAttribute("listReaders", listReaders);
                request.setAttribute("listBooks", listBooks);
                request.getRequestDispatcher("/index.jsp")
                    .forward(request, response);
                break;    
        }
        
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
