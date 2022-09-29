package br.com.digitalhouse.ecommerce.services;

import br.com.digitalhouse.ecommerce.dtos.HarmonyDto;
import br.com.digitalhouse.ecommerce.dtos.ProductDto;
import br.com.digitalhouse.ecommerce.entities.Harmony;
import br.com.digitalhouse.ecommerce.entities.Product;
import br.com.digitalhouse.ecommerce.repositories.HarmonyRepository;
import br.com.digitalhouse.ecommerce.repositories.ProductRepository;
import br.com.digitalhouse.ecommerce.services.exceptions.DatabaseWineException;
import br.com.digitalhouse.ecommerce.services.exceptions.EntityWineNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class HarmonyService {

    @Autowired
    private HarmonyRepository harmonyRepository;

    @Autowired
    private ProductRepository productRepository;

    // Search All
    @Transactional(readOnly = true)
    public List<HarmonyDto> searchAll() {
        try{
            List<Harmony> list = harmonyRepository.findAll();
            return list.stream().map(x -> new HarmonyDto(x)).collect(Collectors.toList());
        }catch(EntityNotFoundException e){
            throw new EntityWineNotFoundException(
                    "Registros Não Encontrados!"
            );
        }
    }

    // Search By Id
    @Transactional(readOnly = true)
    public HarmonyDto searchById(Integer id) {
        Optional<Harmony> object = harmonyRepository.findById(id);
        Harmony entity = object.orElseThrow(() -> new EntityWineNotFoundException("Registro: " + id + " Não Encontrado"));
        return new HarmonyDto(entity);
    }

    // Insert
    @Transactional
    public HarmonyDto insert(HarmonyDto dto) {
        Harmony entity = new Harmony();
        copyDtoForEntity(dto, entity);
        entity = harmonyRepository.save(entity);
        return new HarmonyDto(entity);
    }

    // Update
    @Transactional
    public HarmonyDto update(Integer id, HarmonyDto dto) {
        try {
            Harmony entity = harmonyRepository.getReferenceById(id);
            copyDtoForEntity(dto, entity);
            entity = harmonyRepository.save(entity);
            return new HarmonyDto(entity);
        } catch (EntityNotFoundException e){
        throw new EntityWineNotFoundException(
                "Registro" + id + "Não encontrado!"
        );
        }
    }

    // Delete
    public void delete(Integer id) {
        try{
        harmonyRepository.deleteById(id);
        }
        catch (EmptyResultDataAccessException e){
            throw new EntityWineNotFoundException(
                    "Exclusão não possível não realizada!" +
                            id + "Não encontrado!"
            );
        }
        catch (DataIntegrityViolationException e){
            throw new DatabaseWineException(
                    "Violação de integridade: Registro" +
                            id + "está em outro registro!"
            );
        }
    }

    // Model
    private void copyDtoForEntity(HarmonyDto dto, Harmony entity) {
        entity.setNameplate(dto.getNameplate());
        entity.setImage(dto.getImage());

        entity.getProducts().clear();
        for (ProductDto productDto : dto.getProducts()) {
            Product product = productRepository.getReferenceById(productDto.getId());
            entity.getProducts().add(product);
        }
    }

}