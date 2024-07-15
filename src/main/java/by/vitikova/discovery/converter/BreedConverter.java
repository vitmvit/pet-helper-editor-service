package by.vitikova.discovery.converter;

import by.vitikova.discovery.BreedDto;
import by.vitikova.discovery.create.BreedCreateDto;
import by.vitikova.discovery.model.entity.Breed;
import by.vitikova.discovery.update.BreedUpdateDto;
import org.mapstruct.*;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)

public interface BreedConverter {

    /**
     * Преобразование объекта Breed в объект BreedDto.
     *
     * @param source исходный объект Breed
     * @return преобразованный объект BreedDto
     */
    @Mappings({
            @Mapping(target = "id", source = "id"),
            @Mapping(target = "name", source = "name"),
            @Mapping(target = "typeId", source = "source.type.id")
    })
    BreedDto convert(Breed source);

    /**
     * Преобразование объекта BreedCreateDto в объект Breed.
     *
     * @param source исходный объект BreedCreateDto для создания чата
     * @return преобразованный объект Breed
     */
    @Mappings({
            @Mapping(target = "id", source = "id"),
            @Mapping(target = "name", source = "name"),
            @Mapping(target = "type.id", source = "typeId")
    })
    Breed convert(BreedCreateDto source);

    /**
     * Преобразование объекта BreedUpdateDto в объект Breed.
     *
     * @param source исходный объект BreedUpdateDto
     * @return преобразованный объект Breed
     */
    Breed convert(BreedUpdateDto source);

    /**
     * Обновление полей объекта Breed на основе данных из BreedUpdateDto.
     *
     * @param breed объект Breed, который нужно обновить
     * @param dto   объект BreedUpdateDto с обновленными данными
     * @return обновленный объект Breed
     */
    Breed merge(@MappingTarget Breed breed, BreedUpdateDto dto);
}
