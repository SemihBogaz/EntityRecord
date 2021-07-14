package com.springmvc.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;       
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    


import com.springmvc.model.EntityModel;

public class EntityDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template= template;		
	}
	
	public int save(EntityModel entityModel) {
		String sql = "insert into entities "
				+ "values('"+entityModel.getName()+"','"+entityModel.getSurname()
				+"','"+entityModel.getBloodType()+"','"+entityModel.getPhoneNumber()
				+"','"+entityModel.getAddress()+"');";
		return template.update(sql);
	}
	
	public List<EntityModel> getEntities(){
		List<EntityModel> entityList = template.query("select * from entities",new RowMapper<EntityModel>() {
		
			public EntityModel mapRow(ResultSet rs,int row) throws SQLException {
				EntityModel e = new EntityModel();
				e.setName(rs.getString("Name"));
				e.setSurname(rs.getString("Surname"));
				e.setBloodType(rs.getString("BloodType"));
				e.setPhoneNumber(rs.getString("Phone"));
				e.setAddress(rs.getString("Address"));
				
				return e;				
			}			
		});
		return entityList;		
	}

}
