package by.vitikova.discovery.model.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Audited
@Builder
@Entity
@Getter
@Setter
@Table(uniqueConstraints =
        {
                @UniqueConstraint(columnNames = "name")
        }
)
public class AnimalType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "type", cascade = CascadeType.ALL)
    private List<Breed> listBreeds;
}
