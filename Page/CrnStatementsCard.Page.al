page 50101 CrnStatementsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';

                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    Caption = 'Difficulty';
                    ToolTip = 'Select the Difficulty.';

                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Output)
            {
                Caption = 'Output';

                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                    Caption = 'Suggestion';
                    ToolTip = 'Suggestion.';
                    Editable = false;
                }
                field(Level; Level)
                {
                    ApplicationArea = All;
                    Caption = 'Level';
                    ToolTip = 'Level.';
                    Editable = false;
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            group(RunStatements)
            {
                Caption = 'Run Statements';

                action(ForStatement)
                {
                    ApplicationArea = All;
                    Image = ExecuteBatch;
                    Caption = 'For';
                    ToolTip = 'Click to run a For statement.';
                    trigger OnAction()
                    var
                        CrnStatements: Codeunit CrnStatements;
                    begin
                        CrnStatements.RunForStatement();
                    end;
                }
                action(ForDownToStatement)
                {
                    ApplicationArea = All;
                    Image = ExecuteBatch;
                    Caption = 'For Down To';
                    ToolTip = 'Click to run a For Down To statement.';
                    trigger OnAction()
                    var
                        CrnStatements: Codeunit CrnStatements;
                    begin
                        CrnStatements.RunForDownToStatement();
                    end;
                }
                action(ForeachStatement)
                {
                    ApplicationArea = All;
                    Image = ExecuteBatch;
                    Caption = 'Foreach';
                    ToolTip = 'Click to run a Foreach statement.';
                    trigger OnAction()
                    var
                        CrnStatements: Codeunit CrnStatements;
                    begin
                        CrnStatements.RunForeachStatement();
                    end;
                }
                action(WhileStatement)
                {
                    ApplicationArea = All;
                    Image = ExecuteBatch;
                    Caption = 'While';
                    ToolTip = 'Click to run a While statement.';
                    trigger OnAction()
                    var
                        CrnStatements: Codeunit CrnStatements;
                    begin
                        CrnStatements.RunWhileStatement();
                    end;
                }
                action(RepeatUntilStatement)
                {
                    ApplicationArea = All;
                    Image = ExecuteBatch;
                    Caption = 'Repeat Until';
                    ToolTip = 'Click to run a Repeat Until statement.';
                    trigger OnAction()
                    var
                        CrnStatements: Codeunit CrnStatements;
                    begin
                        CrnStatements.RunRepeatUntilStatement();
                    end;
                }
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;

}