package beans;

public class Pages {
    private String page;
    private String rows;
    private String sort;
    private String order;

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public Pages() {
    }

    public Pages(String page, String rows, String sort, String order) {
        this.page = page;
        this.rows = rows;
        this.sort = sort;
        this.order = order;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getRows() {
        return rows;
    }

    public void setRows(String rows) {
        this.rows = rows;
    }

    @Override
    public String toString() {
        return "Pages{" +
                "page='" + page + '\'' +
                ", rows='" + rows + '\'' +
                ", sort='" + sort + '\'' +
                ", order='" + order + '\'' +
                '}';
    }
}
