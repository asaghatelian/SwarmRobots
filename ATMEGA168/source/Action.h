#ifndef Action_h
#define Action_h

#include <inttypes.h>
#include "SwarmRobot.h"
#include "Messager.h"
#include "Motor.h"


#if _DEBUG
#define _DEBUG_ACTION 1
#endif

/*   */

//B-Step = Big Step = the lenth of robot (have enough space to rotate)
//S-Step = Small Step = one step of motor = one third of Big Step (avoid colliding)
#define BIGSTEP_TIMES 8

// InteriorInfoID_enum is used as index of a array
typedef enum
{
    ROBOT_TYPE,       //state: always INFO_STATE_TRUE
    TASK_STAGE,       //Para: used as TTLcnt  state: LOOKINGFOOD FOUNDFOOD GETFOOD LOOKINGPOWER FOUNDPOWER ...
    IS_ENVINFO,       //
    IS_ACTION_MOVE,   //
    IS_MOVING,        //
    IS_REPEAT_SWING,  //state: false true
    IS_BIGSTEP,       // state: false true
    TARGET_NEXT,      //paraA: RobotID;  state: NULL SET ARRIVED  .
    WEIGHT,           //para: uint8_t ; state:always INFO_STATE_TRUE
    POWER,            //state: FULL SHORT EMPTY
    TIMER,            //paraA: COUNTER;  state: false true
    INNERIOR_ID_END
}InteriorInfoID_enum;


typedef enum
{
    INFO_STATE_FALSE,
    INFO_STATE_TRUE,
    INFO_STATE_EMPTY,
    INFO_STATE_SET,
    INFO_STATE_ARRIVED,
    INFO_STATE_FULL,
    INFO_STATE_SHORT,
    
    TS_INIT = 0x80,
    TS_FOUNDFOOD,
    TS_GETFOOD,
    TS_POWER,
    TS_LOOKINGPOWER,
    TS_FOUNDPOWER,
    TS_ANY,
    
    INFO_STATE_END
}InteriorInfoState_enum;

enum
{
    MOVE_TARGET,
    MOVE_WALKAROUND
};


#define ACTION_INTERIORINFO_NUM  INNERIOR_ID_END  //it must equal to ExteriorInfo_enum

typedef struct
{
    uint8_t Para;
    InteriorInfoState_enum State;
}InteriorInfoRec_stru;

/*  */
typedef enum
{
    ENVINFO,
    INTERIORINFO
}InfoType_enum;

typedef enum
{
    ACTION_NONE,

    ACTION_FLOW_STOP,

    ACTION_IN_SET,

    ACTION_EXT_MOVE,
    ACTION_EXT_SENDMSG,
    ACTION_EXT_FINISH

}ActionID_enum;

typedef struct RuleRec
{
    InfoType_enum InfoType;//  ENVINFO   |      INTERIORINFO
    uint8_t InfoID;        //  RobotID   |   InteriorInfoID_enum
    uint8_t InfoPara;     //   MsgID    |   Para
    uint8_t ActionID;
    uint8_t ActParaA;
    uint8_t ActParaB;
}RuleRec_stru;

typedef struct MoveRule
{
    MTMovDir_enum Direction;
    uint8_t Para;
}MoveRule_stru;



class Action_cls
{
private:
    IR_Sensor &Sensor;
    BiMotor &Wheels;
    Messager_cls &Messager;

    InteriorInfoRec_stru InteriorInfoTbl[ACTION_INTERIORINFO_NUM];
    static RuleRec_stru RuleTbl[];
    static RuleRec_stru TimerRuleTbl[];
    static RuleRec_stru PreRuleTbl[];
    static RuleRec_stru PostRuleTbl[];

    uint8_t RuleNum, TimerRuleNum, PreRuleNum, PostRuleNum;

    void InteriorInfoUpdate();
    void ActionRule( RuleRec_stru *pTbl, uint8_t RuleNum );

    void ActionSendMsg( uint8_t RobotID, uint8_t MsgID );
    void ActionMove( uint8_t );
    void ActionFinish();
    void ExecuteMove( uint8_t Direct );

    inline void SetInteriorInfo( uint8_t InfoID, uint8_t State );
    inline void GetInteriorInfo( uint8_t InfoID, uint8_t *pState, uint8_t *pPara = NULL );

protected:


public:
    Action_cls(IR_Sensor &, BiMotor &, Messager_cls &);
    void ActionProc();
    void TimerProc();
};

#endif


/*
 * task:
1=walk about
2=walk to target
3=line up and move


near obstacle condition
{
    { obstacle-f fl fr b bl br l r },
    { target - f fl fr b bl br l r },
    {


}
 *
robot location condition
{
   location - who
}

message condition
{
        { TargetID close/block/attack  relative-location }
}

1,detecting --  move one step/ rotate some angle  and than detecting
2,receive at all time

action
  condition Y/N     action
 stepnum=6      rotate randomly(clear step count)
 back moving with six = Y   move-backward
 nothing        judge front
 obstacle-f Y    judge left
 obstacle-f N    move-forward
 obstacle-f     stop
 obstacle-l Y   judge right
 obstacle-l N   rotate left
 obstacle-r Y   judge back
 obstacle-r N   rotate right

 obstacle-b Y   wait
 obstacle-b N   move-backward(6 step)

 stop          judge direction
 stop          send: i am

 nothing      move random

  judge proper
 obstacle-fl
rotate(any, 90degree)
*/
