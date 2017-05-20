package es.uji.ei102716cdg.validator;

import java.util.List;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import es.uji.ei102716cdg.dao.SkillDao;
import es.uji.ei102716cdg.domain.skill.Skill;

public class SkillValidator implements Validator {

	SkillDao skillDao = new SkillDao();
	
	@Override
	public boolean supports(Class<?> cls) {
		return Skill.class.equals(cls);
	}

	@Override
	public void validate(Object obj, Errors errs) {
		Skill skill = (Skill)obj;
		
		//Check skill name
		if (skill.getName().trim().equals(""))
			errs.rejectValue("name", "obligatorio",
					"El nombre de la skill es obligatorio");

		//TODO validar Skill no repetida. Ahora mismo el sistema lo bloquea, pero no informa al usuario
		List<Skill> lista = skillDao.getSkillAllLevels(skill.getName());
		System.out.println("Skill: "+lista);
		

	}
	
}
