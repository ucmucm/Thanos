package mn.ooo.thanos.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@Data
@Entity
@Table(name = "ArticleInfo")
public class Article {

    @Id
    @GeneratedValue
    private int articleId;

    private int userId;

    private String articleTitle;
    private String articleDetails;
    private Date articleCreatedDate;
    private Date articleUpdatedDate;

}
