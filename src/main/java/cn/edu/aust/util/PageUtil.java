package cn.edu.aust.util;

/**
 * 分页参数的工具类,接收页面传来的分页参数
 */
public class PageUtil {

//    from table-demo.js
/*    function queryParams(params) {  -> xxxMapper.xml 去控制查询的内容

        return {
                limit: params.limit,
                offset: params.offset,
                order: params.order,
                ordername: params.sort,
                search: params.search
        };
    }*/

//    from mapper
//    <select id="showallphonesummary" parameterType="cn.edu.aust.util.PageUtil"  传递的是这个PageUtil
//    resultType="cn.edu.aust.entity.Phone">

    private int limit = 20;
    private int offset = 1;
    //    private String order = "asc";
    private String order;
    private String sortName;
    private String search;
    private int stage = 0;//对应的阶段,作用于目录时,则为对应的目录id,用作用户时则为用户的id


    public int getStage() {
        return stage;
    }

    public void setStage(int stage) {
        this.stage = stage;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        if (search != null) {
            search = "%" + search + "%";
        }
        this.search = search;
    }

    @Override
    public String toString() {
        return "PageUtil{" +
                "limit=" + limit +
                ", offset=" + offset +
                ", order='" + order + '\'' +
                ", sortName='" + sortName + '\'' +
                ", search='" + search + '\'' +
                ", stage=" + stage +
                '}';
    }
}
