package entity;

/**
 * YuLeKandian entity. @author MyEclipse Persistence Tools
 */

public class YuLeKandian implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private String intro;
	private String imgurl;

	// Constructors

	/** default constructor */
	public YuLeKandian() {
	}

	/** minimal constructor */
	public YuLeKandian(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public YuLeKandian(Integer id, String title, String content, String intro,
			String imgurl) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.intro = intro;
		this.imgurl = imgurl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getImgurl() {
		return this.imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

}