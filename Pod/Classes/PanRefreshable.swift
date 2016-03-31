//
//  File.swift
//  Pods
//
//  Created by mortal on 16/3/30.
//
//

import SwiftyJSON
import MJRefresh
public protocol Refreshable {
    var tableView:UITableView? {get set}
    //var dataJSON:JSON? {get set}
    func makeRefreshable()
    func makeHeaderRefreshable()
    func makeFooterRefreshable()
    func doHeadRefresh()
    func doFootRefresh()
    
    func beginHeaderRefreshing()
    func beginFooterRefreshing()
    
    func endAllRefresh()
    func endHeadRefresh()
    func endFootRefresh()
    
}
extension Refreshable {
    
    func makeRefreshable(){
        makeHeaderRefreshable()
        makeFooterRefreshable()
    }
    
    func makeHeaderRefreshable() {
        self.tableView?.mj_header = MJRefreshNormalHeader(refreshingBlock: { () -> Void in
            self.doHeadRefresh()
        })
    }
    
    func makeFooterRefreshable() {
        self.tableView?.mj_footer = MJRefreshBackNormalFooter(refreshingBlock: { () -> Void in
            self.doFootRefresh()
        })
    }
    
    func beginHeaderRefreshing() {
        self.tableView?.mj_header.beginRefreshing()
    }
    
    func beginFooterRefreshing(){
        self.tableView?.mj_footer.beginRefreshing()
    }
    
    func endAllRefresh(){
        self.tableView?.mj_header.endRefreshing()
        self.tableView?.mj_footer.endRefreshing()
    }
    
    func endHeadRefresh(){
        self.tableView?.mj_header.endRefreshing()
    }
    
    func endFootRefresh(){
        self.tableView?.mj_footer.endRefreshing()
    }
    
    
    func doHeadRefresh(){
    }
    
    func doFootRefresh(){
    }
}
