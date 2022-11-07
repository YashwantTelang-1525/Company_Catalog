package com.yashwant.cateloge;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Feedbackrepository extends JpaRepository<FeedbackEntity,String>{

}
