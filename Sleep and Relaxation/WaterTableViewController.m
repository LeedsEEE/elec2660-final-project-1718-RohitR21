//
//  WaterTableViewController.m
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "WaterTableViewController.h"

@interface WaterTableViewController ()

@end

@implementation WaterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //To access data from waterDataModel:
    self.data = [[WaterTracksDataModel alloc]init];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    NSInteger numberOfRows;
    if (section ==0) {
        numberOfRows = self.data.waterAudioTracks.count; //Returns however number of rows/tracks there are for water.
    }
    
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"waterTrackCell" forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section ==0) {
        AudioTracks *waterTempAudio = [self.data.waterAudioTracks objectAtIndex:indexPath.row];
        
        //Configure track names from datamodel to TableViewController
        cell.textLabel.text = waterTempAudio.trackName;
    }
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    //To push data to musicViewController
    if ([[segue identifier]isEqualToString:@"showTrackView"]) {
        MusicControlViewController *destViewController = [segue destinationViewController]; //move data using local musiccontrolViewController.
        
        //index path used to get correct track infromation for each respective track.
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        if (indexPath.section ==0) {
            AudioTracks *tempWaterTracks = [self.data.waterAudioTracks objectAtIndex:indexPath.row];
            destViewController.audiotracks = tempWaterTracks; //set temp audiotrack in musicControlViewController.
        }
        
    }
    
}


@end
