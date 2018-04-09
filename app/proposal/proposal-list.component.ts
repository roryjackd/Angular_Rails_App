import { Component } from '@angular/core';
import { Proposal } from './proposal';

@Component({   moduleId: module.id,   selector: 'proposal-list', templateUrl: 'proposal-list.component.html' }) export
class ProposalListComponent {   
  proposalOne: Proposal = new Proposal(15, 'Abc Company',
  'http://portfolio.rorydemers.com', 'Ruby on Rails', 150, 120, 15, 'rory@devcamp.com') 
  proposalTwo: Proposal = new Proposal(99, 'XYZ Company',
  'http://portfolio.rorydemers.com', 'Ruby on Rails', 150, 120, 15, 'rory@devcamp.com') 
  proposalThree: Proposal = new Proposal(300, 'Something Company',
  'http://portfolio.rorydemers.com', 'Ruby on Rails', 150, 120, 15, 'rory@devcamp.com') 

  proposals: Proposal[] = [
  this.proposalOne, 
  this.proposalTwo, 
  this.proposalThree
  ]
}
