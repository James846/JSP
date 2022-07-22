package Model;

public class Page {
    int totalCount,totalPage, pageCur;

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageCur() {
        return pageCur;
    }

    public void setPageCur(int pageCur) {
        this.pageCur = pageCur;
    }

}
