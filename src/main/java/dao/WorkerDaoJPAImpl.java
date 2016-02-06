package dao;

import exeption.NoWorkerFoundException;
import model.ServiceForClient;
import model.Worker;
import model.WorkerTypes;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class WorkerDaoJPAImpl implements WorkerDao {

    @Autowired
    private EntityManagerFactory factory;

    public WorkerDaoJPAImpl() {
    }

    public WorkerDaoJPAImpl(EntityManagerFactory factory) {

        this.factory = factory;
    }


    @Override
    public Worker create(Worker worker) {
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            transaction.begin();
            manager.persist(worker);
            transaction.commit();
            System.out.println("worker " + worker.toString() + " made!!!!");
        } catch (Exception e) {
            transaction.rollback();
        }


        return worker;
    }

    @Override
    public Worker update(String firstName, String secondName, long salary, WorkerTypes workerTypes, long id,String login) {

        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();
        Worker found = null;
        try {
            found = findById(id);

            if (found == null) {
                System.out.println("worker not updated!!!");
                return null;
            }

            found.setFirstName(firstName);
            found.setSecondName(secondName);
            found.setSalary(salary);
            found.setWorkerTypes(workerTypes);
            found.setLogin(login);

        } catch (NoWorkerFoundException e) {
            e.printStackTrace();

        }

        try{
            transaction.begin();
            manager.merge(found);
            transaction.commit();
        }catch (Exception e){
            System.out.println("transaction is not done!!!");
            transaction.rollback();
        }

        return found;
    }

    @Override
    public List<Worker> findAll() {
        EntityManager manager = factory.createEntityManager();
        Query query = manager.createQuery("SELECT '*' FROM Worker");
        List<Worker> allWorkers = query.getResultList();

        return allWorkers;
    }

    @Override
    public Worker findById(long id) throws NoWorkerFoundException {
        EntityManager manager = factory.createEntityManager();
        Worker worker = manager.find(Worker.class, id);

        return worker;
    }

    @Override
    public Worker findByLogin(String login) {
        return null;
    }

    @Override
    public Worker findBySecondName(String workersSecondName) throws NoWorkerFoundException {
        EntityManager manager = factory.createEntityManager();
        Query query = manager.createQuery("SELECT '*' FROM Worker WHERE Worker.secondName=:workersSecondName");
        List<Worker> worker = query.setParameter("secondName", workersSecondName).getResultList();
        if (worker == null && worker.size() == 0) {
            System.out.println("worker not found");
        }


        return worker.get(0);
    }

    @Override
    public boolean delete(Worker worker) {
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            Worker forDeleting = manager.find(Worker.class, worker.getId());
            manager.remove(forDeleting);
            System.out.println("worker " + worker.toString() + " deleted!!!");
            transaction.commit();

        } catch (Exception e) {
            transaction.rollback();
            return false;
        }

        return true;
    }

    @Override
    public List<Worker> workersByType(WorkerTypes workerType) {
        EntityManager manager = factory.createEntityManager();
        Query query = manager.createQuery("SELECT '*' FROM Worker WHERE Worker .workerTypes=:workerType");
        List<Worker> workersByType = query.setParameter("workerType", workerType).getResultList();

        if (workersByType == null && workersByType.size() == 0) {
            System.out.println("workers not found!!!");
        }

        return workersByType;
    }

    @Override
    public List<ServiceForClient> findServiceForClientsFromWorker(String workersSecondName) {

       EntityManager manager = factory.createEntityManager();
        Query query = manager.createQuery("SELECT '*' FROM  ServiceForClient WHERE Worker.secondName=:workerSecondName");
        List<ServiceForClient> serviceForClientByWorker = query.setParameter("secondName", workersSecondName).getResultList();

        return serviceForClientByWorker;
    }
}