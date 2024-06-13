using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
public class DialogueVariables
{
    public void StartListening(Story story)
    {

        story.variablesState.variableChangedEvent += VariableChanges;

    }

    public void StopListening(Story story)
    {



    }
    private void VariableChanges(string Name, Ink.Runtime.Object value)
    {
        Debug.Log("Variable_Changed " + Name + " Value " + value);

    }
}
