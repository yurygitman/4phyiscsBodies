//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* myShelf;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;
@property SKPhysicsJoint* myRopeJoint3;
@property SKPhysicsJoint* myRopeJoint4;
@property SKPhysicsJoint* myRopeJoint5;
@property SKPhysicsJoint* myRopeJoint6;
@property SKPhysicsJoint* myRopeJoint7;


@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    _myRopeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    _myRopeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare7.position];
    _myRopeJoint7 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
 
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    [self.physicsWorld addJoint:_myRopeJoint2];
    [self.physicsWorld addJoint:_myRopeJoint3];
    [self.physicsWorld addJoint:_myRopeJoint4];
    [self.physicsWorld addJoint:_myRopeJoint5];
    [self.physicsWorld addJoint:_myRopeJoint6];
    [self.physicsWorld addJoint:_myRopeJoint7];
 

    
}

-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(70, 70)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(60, 60)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(50, 50)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(40, 40)];
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(30, 30)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(20, 20)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(10, 10)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(5, 5)];
    
//    for (int i = 1; i<8; i++) {
//        int startingDistance = 0;
//    
//        NSMutableString *myEnumaratedSquare = [NSMutableString stringWithFormat:@"_mySquare%i", i];
//        SKSpriteNode *holderNode = [[SKSpriteNode alloc]init];
//        [holderNode setPosition:CGPointMake(200, (400+i))];
//        
//    }

    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, 400)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, 340)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, 300)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, 340)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, 320)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, 300)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, 280)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, 260)];
    
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];

    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 20)];
    _myShelf.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
