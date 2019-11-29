package vo;

import java.util.Date;

public class Label {
    private int id;         // 标签id
    private String name;    // 标签名
    private Date addtime;   // 添加时间
    private Date updatetime;// 修改时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        return "Label{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", addtime=" + addtime +
                ", updatetime=" + updatetime +
                '}';
    }
}
