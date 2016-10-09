package servlets.servicecForClientsServlets;

import model.ServiceForClient;
import model.ServiceTypes;
import model.StoreGoodsTypes;
import model.Worker;
import org.omg.PortableInterceptor.LOCATION_FORWARD;
import org.springframework.context.ApplicationContext;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.datetime.DateFormatter;
import service.ClientServ;
import service.ServiceForClientServ;
import service.WorkerServ;

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
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.logging.Logger;

@WebServlet(urlPatterns = {"/updateSFC"})
public class UpdateServiceForClient extends HttpServlet {
    private static final org.apache.log4j.Logger LOGGER =
            org.apache.log4j.Logger.getLogger(AddServiceForClientController.class);
    private WorkerServ workerServ;
    private ClientServ clientServ;
    private ServiceForClientServ serviceForClientServ;
    private ServiceForClient serviceForClientFound;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter printWriter = resp.getWriter();


        String stringId = req.getParameter("idSFC");
        System.out.println("request got parameter IDSFC is: " + stringId);

        long IDCFC = Long.parseLong(String.valueOf(stringId));
        System.out.println("Long of IDSFC converted from string is: " + IDCFC);

        ServiceForClient found = serviceForClientServ.findById(IDCFC);
        serviceForClientFound = found;


        String nameOfFoundSFC = null;
        if (found.getServiceTypes() == null) {
            nameOfFoundSFC = String.valueOf(found.getStoreGoodsTypes());
        } else {
            nameOfFoundSFC = String.valueOf(found.getServiceTypes());
        }

        resp.setContentType("text/HTML");
        System.out.println(nameOfFoundSFC);
        printWriter.print("Name of SFC: " + nameOfFoundSFC + ", ");


        String priceOfFoundSFC = String.valueOf(found.getPriceOfService());
        System.out.println(priceOfFoundSFC);
        printWriter.print(" Price of SFC: " + priceOfFoundSFC + ", ");


        String dateStartFoundSFC = String.valueOf(found.getStartDate());
        printWriter.print(" Start date: " + dateStartFoundSFC + ", ");


        String dateFinishFoundOfSFC = String.valueOf(found.getFinishDate() + "\n");
        printWriter.print(" Finish date: " + dateFinishFoundOfSFC + ", ");

        String clientOfFounfSFC = found.getClient().getFirstName() + " " + found.getClient().getSecondName();
        String clientId = String.valueOf(found.getClient().getId());
        printWriter.print(" Client: " + clientOfFounfSFC + " client ID = " + clientId + ", ");


        String workerOfFoundSFC = found.getWorker().getFirstName() + " " + found.getWorker().getSecondName();
        String workerId = String.valueOf(found.getWorker().getId());
        printWriter.print(" Worker: " + workerOfFoundSFC + " worker ID=" + workerId + ";");

        printWriter.flush();


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("starting updating Service for Client - in doPost() of updateSFC");

        PrintWriter printWriter = resp.getWriter();
        ServiceTypes newServiceTypes = null;
        StoreGoodsTypes newStoreGoodsTypes = null;
        Date newStartDate = null;
        Date newFinishDate = null;
        long newPrice = 0;
        Worker newWorker = null;
        long newIDWorker = 0;
        long idSFCtoBeUpdated = 0;


        ServiceForClient found = serviceForClientFound;


        String oldTypeOfSFC = found.getServiceTypes().toString();
        System.out.println(oldTypeOfSFC);

        String oldStartDate = found.getStartDate().toString();
        System.out.println(oldStartDate);

        String oldFinishDate = found.getFinishDate().toString();
        System.out.println(oldFinishDate);

        long oldPrice = found.getPriceOfService();
        System.out.println(oldPrice);

        long oldIdWorker = found.getWorker().getId();
        System.out.println(oldIdWorker);

        String newTypeOfCFC = req.getParameter("newTypeOfCFC");
        System.out.println(newTypeOfCFC);


        if (newTypeOfCFC != null) {

            if (newTypeOfCFC == "REPAIR_BODY_CAR") {
                newServiceTypes = ServiceTypes.REPAIR_BODY_CAR;
            } else if (newTypeOfCFC == "REPAIR_MOTOR") {
                newServiceTypes = ServiceTypes.REPAIR_MOTOR;
            } else if (newTypeOfCFC == "REPAIR_CHASSIS") {
                newServiceTypes = ServiceTypes.REPAIR_CHASSIS;
            } else if (newTypeOfCFC == "REPAIR_BRAKE") {
                newServiceTypes = ServiceTypes.REPAIR_BRAKE;
            } else if (newTypeOfCFC == "REPAIR_CLUTCH") {
                newServiceTypes = ServiceTypes.REPAIR_CLUTCH;
            } else if (newTypeOfCFC == "REPAIR_GEARBOX") {
                newServiceTypes = ServiceTypes.REPAIR_GEARBOX;
            } else if (newTypeOfCFC == "CHANGE_TIRES") {
                newServiceTypes = ServiceTypes.CHANGE_TIRES;
            } else if (newTypeOfCFC == "CHANGE_CONSUMABLES") {
                newServiceTypes = ServiceTypes.CHANGE_CONSUMABLES;
            } else if (newTypeOfCFC == "DIAGNOSTIC") {
                newServiceTypes = ServiceTypes.DIAGNOSTIC;
            } else if (newTypeOfCFC == "WASH_CAR_OUTSIDE") {
                newServiceTypes = ServiceTypes.WASH_CAR_OUTSIDE;
            } else if (newTypeOfCFC == "WASH_CAR_INSIDE") {
                newServiceTypes = ServiceTypes.WASH_CAR_INSIDE;
            } else if (newTypeOfCFC == "WASH_TOTAL") {
                newServiceTypes = ServiceTypes.WASH_TOTAL;
            } else if (newTypeOfCFC == "WARRANTY_SERVICE") {
                newServiceTypes = ServiceTypes.WARRANTY_SERVICE;
            } else if (newTypeOfCFC == "OTRHER_KIND_REPAIRING") {
                newServiceTypes = ServiceTypes.OTRHER_KIND_REPAIRING;
            } else if (newTypeOfCFC == "SPARE_PARTS") {
                newStoreGoodsTypes = StoreGoodsTypes.SPARE_PARTS;
            } else if (newTypeOfCFC == "CONSUMABLES") {
                newStoreGoodsTypes = StoreGoodsTypes.CONSUMABLES;
            } else if (newTypeOfCFC == "SOUVENIRS") {
                newStoreGoodsTypes = StoreGoodsTypes.SOUVENIRS;
            } else {
                newStoreGoodsTypes = StoreGoodsTypes.TIRES;
            }
        }

        String date1 = req.getParameter("startDate");
        if (date1 != null) {
            DateFormat dateFormat1 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                newStartDate = dateFormat1.parse(date1);
                LOGGER.info(newStartDate + " start date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }


        String date2 = req.getParameter("finishDate");
        if (date2 != null) {
            DateFormat dateFormat2 = new SimpleDateFormat("dd mm yyyy hh:mm");
            try {
                newFinishDate = dateFormat2.parse(date2);
                LOGGER.info(newFinishDate + " finish date ->> info: AddServiceForClientController");
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        if (req.getParameter("price") != null) {
            newPrice = Long.parseLong(req.getParameter("price"));
            LOGGER.info(newPrice);
        }

        if (req.getParameter("workers") != null) {
            newIDWorker = Long.parseLong(req.getParameter("workers"));
            LOGGER.info(newIDWorker);
        }

        Worker foundWorker = workerServ.getWorkerById(newIDWorker);
        if (found != null) {
            newWorker = foundWorker;
        }

        idSFCtoBeUpdated = Long.parseLong(req.getParameter("idSFC"));

        ServiceForClient serviceForClient = serviceForClientServ.updateServiceForClient(idSFCtoBeUpdated, newServiceTypes, newStoreGoodsTypes, newStartDate,
                newFinishDate, newPrice, newWorker);
        req.setAttribute("serviceForClient", serviceForClient);
        req.getRequestDispatcher("loginForWorker.jsp").forward(req, resp);

        printWriter.flush();


    }

    @Override
    public void init() throws ServletException {
        ApplicationContext applicationContext =
                (ApplicationContext) getServletContext().getAttribute("spring-context");
        workerServ = applicationContext.getBean(WorkerServ.class);
        clientServ = applicationContext.getBean(ClientServ.class);
        serviceForClientServ = applicationContext.getBean(ServiceForClientServ.class);

        super.init();
    }
}
