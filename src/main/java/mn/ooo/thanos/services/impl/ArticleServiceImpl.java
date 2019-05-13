package mn.ooo.thanos.services.impl;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.model.Article;
import mn.ooo.thanos.repositories.ArticleRepository;
import mn.ooo.thanos.services.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@RequiredArgsConstructor
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleRepository repository;

    public List<Article> findAllByUserId(final String userId) {
        return repository.findAllByUserId(userId);
    }
}
