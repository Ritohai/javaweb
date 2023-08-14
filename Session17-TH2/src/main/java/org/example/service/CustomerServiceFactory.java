package org.example.service;


import org.example.model.Customer;

import java.util.List;

public class CustomerServiceFactory {
    private static CustomerService singleton;

    public static synchronized CustomerService getInstance() {
        if (singleton == null) {
            singleton = new CustomerService() {
                @Override
                public List<Customer> findAll() {
                    return null;
                }

                @Override
                public Customer findOne(Long id) {
                    return null;
                }

                @Override
                public Customer save(Customer customer) {
                    return null;
                }

                @Override
                public List<Customer> save(List<Customer> customers) {
                    return null;
                }

                @Override
                public boolean exists(Long id) {
                    return false;
                }

                @Override
                public List<Customer> findAll(List<Long> ids) {
                    return null;
                }

                @Override
                public long count() {
                    return 0;
                }

                @Override
                public void delete(Long id) {

                }

                @Override
                public void delete(Customer customer) {

                }

                @Override
                public void delete(List<Customer> customers) {

                }

                @Override
                public void deleteAll() {

                }
            };
        }
        return singleton;
    }
}