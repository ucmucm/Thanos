package mn.ooo.thanos.services;

import mn.ooo.thanos.model.Article;

import java.util.List;

public interface ArticleService {

    List<Article> findAllByUserId(final String userId);

}
