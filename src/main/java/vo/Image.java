package vo;

import java.util.Date;

public class Image {
    private int id;
    private int labelId;
    private String name;
    private String path;
    private Date addtime;
    private Date updatetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLabelId() {
        return labelId;
    }

    public void setLabelId(int labelId) {
        this.labelId = labelId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", labelId=" + labelId +
                ", name='" + name + '\'' +
                ", path='" + path + '\'' +
                ", addtime=" + addtime +
                ", updatetime=" + updatetime +
                '}';
    }
}
