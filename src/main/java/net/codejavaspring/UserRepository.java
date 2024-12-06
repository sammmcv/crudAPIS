// con este repositorio implementado a la interfaz podemos hacer consultas CRUD de forma "automatica"
package net.codejavaspring;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface UserRepository extends JpaRepository<User, Long> {
	@Query("SELECT u FROM User u WHERE u.email = ?1") // consulta predefinida para obtener usuarios mediante
	public User findByEmail(String email);					// su email, la utilizaremos en el codigo
}
