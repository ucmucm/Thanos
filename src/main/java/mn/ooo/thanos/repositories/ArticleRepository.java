package mn.ooo.thanos.repositories;

import mn.ooo.thanos.model.Article;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

    List<Article> findAllByUserId(final String userId);

}
