package by.vitikova.discovery.model.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Audited
@Entity
@Getter
@Setter
public class Breed {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToOne
    @JoinColumn(
            name = "type_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "fk_type_animal_id_to_id")
    )
    private AnimalType type;
}
