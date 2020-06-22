**Description**


In an iOS / iPad / tvOS / macOS application, under macOS it's impossible to pre-select several cells of the same UITableView.
Visually only one cell is checked and the tableView.indexPathsForSelectedRows property has always only one element.

![Alt text](/screen.png "result")


**Expected result**

Cells visually selected AND indexPathsForSelectedRows reflecting this selection


**Obtained result**

Only the last cell called by tableview.selectRow is selected and present in the property indexPathsForSelectedRows
