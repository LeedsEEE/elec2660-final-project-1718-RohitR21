//
//  TableViewController.m
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FireTableViewController.h"

@interface FireTableViewController ()

@end

@implementation FireTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //To change background colour for the fire tab.
 //  self.tableView.backgroundColor = [UIColor blueColor];
  
  /*   self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.opaque = NO;
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moonnight.png"]]; */

    //To access data from tracksdatamodel.
    self.data = [[TracksDataModel alloc]init];
    
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
//To return the number of rows in section.
    NSInteger numberOfRows;
    if (section ==0) {
        numberOfRows = self.data.fireAudioTracks.count;
    }
    return numberOfRows ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TrackCell" forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section == 0) {
        AudioTracks *tempAudio = [self.data.fireAudioTracks objectAtIndex:indexPath.row];
        
        //To configure the track names from data model to Table view text label:
        cell.textLabel.text = tempAudio.trackName;
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
    
    //To push data to the MusicControlViewController:
    //Using Segue identifier to ensure the correct segue is chosen:
    if ([[segue identifier] isEqualToString:@"showTrackView"]) {
        MusicControlViewController *destViewController = [segue destinationViewController]; //To move data using the local MusicControlViewController copy.
        
    //Index Path used to get the correct track info and music playing.
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section ==0) {
            AudioTracks *tempTracks = [self.data.fireAudioTracks objectAtIndex:indexPath.row];
            destViewController.audiotracks = tempTracks; //To set temp AudioTracks object as the object in the MusicControlViewController.
            
            
            
        }
    }
}
@end
