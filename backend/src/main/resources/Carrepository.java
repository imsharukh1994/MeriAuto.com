package main.resources;

import com.meriauto.entity.Car;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarRepository extends JpaRepository<Car, Long> {
    // Add custom query methods if needed, e.g.:
    // List<Car> findByBrandAndCity(String brand, String city);
}