package servlets.servicecForClientsServlets;

import model.*;
import org.springframework.context.ApplicationContext;
import org.springframework.format.datetime.DateFormatter;
import service.ClientServ;
import service.ServiceForClientServ;
import service.WorkerServ;
import servlets.workerServlets.LoginController;
import util.GetEnumFromString;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@WebServlet(urlPatterns = {"/addSFC"})
public class AddServiceForClientController extends HttpServlet {
    private static final org.apache.log4j.Logger LOGGER =
            org.apache.log4j.Logger.getLogger(AddServiceForClientController.class);
    private ServiceForClientServ serviceForClientServ;
    private ServiceForClient serviceForClient;
    private Client client;
    private ClientServ clientServ;
    private Worker worker;
    private WorkerServ workerServ;



    @Override
    public void init() throws ServletException {
        ApplicationContext applicationContext = (ApplicationContext) getServletContext().getAttribute("spring-context");
        serviceForClientServ = applicationContext.getBean(ServiceForClientServ.class);
        clientServ = applicationContext.getBean(ClientServ.class);
        workerServ = applicationContext.getBean(WorkerServ.class);

        if (serviceForClientServ != null) {
            LOGGER.info("Service for client serv created ->>info: AddServiceForClientController");
            super.init();
        } else if (serviceForClientServ == null) {
            LOGGER.info("Service for client is NULL ->> info: AddServiceForClientController");
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        Date startDate = null;
        Date finishDate = null;



        String priceString = req.getParameter("price");
        long price = Long.parseLong(priceString);

        //TODO parsing string if not just one id of worker
        String idWorkerString = req.getParameter("workersID");
        long workerID =
                Long.parseLong(idWorkerString);
        worker = workerServ.getWorkerById(workerID);



        String types = req.getParameter("typeOfService");
        LOGGER.info(types + "-->> Type from doPost in AddServiceForClientController!!!");

        if (types.equalsIgnoreCase("SPARE_PARTS") || types.equalsIgnoreCase("CONSUMABLES") || types.equalsIgnoreCase("SOUVENIRS")
                || types.equalsIgnoreCase("TIRES")) {
            StoreGoodsTypes storeGoodsTypes = GetEnumFromString.getEnumFromString(StoreGoodsTypes.class, types);
            LOGGER.info(storeGoodsTypes.toString() + " -->> store good types from doPost in AddServiceForClientController!!!");

            String date1 = req.getParameter("startDate");
            DateFormat dateFormat1 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                startDate = dateFormat1.parse(date1);
                LOGGER.info(startDate + " start date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }


            String date2 = req.getParameter("finishDate");
            DateFormat dateFormat2 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                finishDate = dateFormat1.parse(date2);
                LOGGER.info(finishDate + " finish date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }

            String idClientString = req.getParameter("clientID");
            long clientId = Long.parseLong(idClientString);
            client = clientServ.getClient(clientId);




            serviceForClient = serviceForClientServ.orderService(null, storeGoodsTypes, startDate, finishDate, price, client, worker);
            LOGGER.info(serviceForClient.toString() + "-->>service for client(type: store goods) info: AddServiceForClientController");
            req.setAttribute("serviceForClient", serviceForClient);


        } else if (types.equalsIgnoreCase("REPAIR_BODY_CAR") || types.equalsIgnoreCase("REPAIR_MOTOR") || types.equalsIgnoreCase("REPAIR_CHASSIS")
                || types.equalsIgnoreCase("REPAIR_BRAKE") || types.equalsIgnoreCase("REPAIR_CLUTCH") || types.equalsIgnoreCase("REPAIR_GEARBOX") ||
                types.equalsIgnoreCase("CHANGE_TIRES") || types.equalsIgnoreCase("CHANGE_CONSUMABLES") || types.equalsIgnoreCase("DIAGNOSTIC") ||
                types.equalsIgnoreCase("WASH_CAR_OUTSIDE") || types.equalsIgnoreCase("WASH_CAR_INSIDE") || types.equalsIgnoreCase("WASH_TOTAL") ||
                types.equalsIgnoreCase("WARRANTY_SERVICE") || types.equalsIgnoreCase("OTRHER_KIND_REPAIRING")) {

            ServiceTypes serviceTypes = GetEnumFromString.getEnumFromString(ServiceTypes.class, types);

            LOGGER.info(serviceTypes.toString() + " -->> service types from doPost in AddServiceForClientController!!!");

            String date1 = req.getParameter("startDate");
            DateFormat dateFormat1 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                startDate = dateFormat1.parse(date1);
                LOGGER.info(startDate + " start date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }


            String date2 = req.getParameter("finishDate");
            DateFormat dateFormat2 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                finishDate = dateFormat1.parse(date2);
                LOGGER.info(finishDate + " finish date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }



            String idClientString = req.getParameter("clientID");
            Long clientId = Long.parseLong(idClientString);
            client = clientServ.getClient(clientId);




            serviceForClient = serviceForClientServ.orderService(serviceTypes, null, startDate, finishDate, price, client, worker);
            LOGGER.info(serviceForClient.toString() + "-->>service for client(type: service type) info: AddServiceForClientController");
            req.setAttribute("serviceForClient", serviceForClient);


        } else {
            LOGGER.info("WRONG TYPE OF SERVICE OR GOODS FOR CLIENT -->> INFO from doPost in AddServiceForClientController!!! ");
        }

        req.getRequestDispatcher("loginForWorker.jsp").forward(req, resp);
        printWriter.flush();

    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
