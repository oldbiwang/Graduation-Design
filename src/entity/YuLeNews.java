package entity;

import java.util.Date;

/**
 * YuLeNews entity. @author MyEclipse Persistence Tools
 */

public class YuLeNews implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String imgurl;
	private String intro;
	private String content;
	private Date date;
	private String link;
	private String videourl;

	// Constructors

	/** default constructor */
	public YuLeNews() {
	}

	/** minimal constructor */
	public YuLeNews(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public YuLeNews(Integer id, String title, String imgurl, String intro,
			String content, Date date, String link, String videourl) {
		this.id = id;
		this.title = title;
		this.imgurl = imgurl;
		this.intro = intro;
		this.content = content;
		this.date = date;
		this.link = link;
		this.videourl = videourl;
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

	public String getImgurl() {
		return this.imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getVideourl() {
		return this.videourl;
	}

	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

}