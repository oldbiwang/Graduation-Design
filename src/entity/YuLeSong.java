package entity;

/**
 * YuLeSong entity. @author MyEclipse Persistence Tools
 */

public class YuLeSong implements java.io.Serializable {

	// Fields

	private Integer id;
	private String url;
	private Integer level;
	private String singer;
	private String name;
	private String link;

	// Constructors

	/** default constructor */
	public YuLeSong() {
	}

	/** full constructor */
	public YuLeSong(String url, Integer level, String singer, String name,
			String link) {
		this.url = url;
		this.level = level;
		this.singer = singer;
		this.name = name;
		this.link = link;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getLevel() {
		return this.level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getSinger() {
		return this.singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

}