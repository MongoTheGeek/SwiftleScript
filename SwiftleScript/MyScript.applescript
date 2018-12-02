use framework "Foundation"
use scripting additions

script MyScript
    property parent: class "NSObject"
    
    on doStuff()
        display dialog "echo 'Test test test'"
        log "more more more"
    end
    
    on testNoParam()
        display dialog "No Parameters"
    end
    
    on testStringParam_(param)
        display dialog "String Parameter:" & param
    end
    
    on testNumberParam_(param)
        display dialog "Number Parameter:" & param
    end
    
    on testObjectParam_(param)
        display dialog "Object Parameter:" & param's description
    end

    on testStringParam_andNumber_(p1,p2)
        display dialog "String Parameter: " & p1 & "(" & p2 & ")"
    end

end
