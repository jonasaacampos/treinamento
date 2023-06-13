page 50104 CrnCodeTestCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Code Test Card';

    layout
    {
        area(Content)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            group(DataTypes)
            {
                Caption = 'Data Types';

                group(EnumsOptions)
                {
                    Caption = 'Enums & Options ';

                    action(SelectEnumColor)
                    {
                        ApplicationArea = All;
                        Image = Select;
                        Caption = 'Select Enum Color';
                        ToolTip = 'Click to view the color selected.';

                        trigger OnAction()
                        var
                            CrnDataTypes: Codeunit CrnDataTypes;
                        begin
                            CrnDataTypes.SelectEnumColor();
                        end;
                    }
                    action(SelectOptionColor)
                    {
                        ApplicationArea = All;
                        Image = Select;
                        Caption = 'Select Enum Color';
                        ToolTip = 'Click to view the color selected.';

                        trigger OnAction()
                        var
                            CrnDataTypes: Codeunit CrnDataTypes;
                        begin
                            CrnDataTypes.SelectOptionColor();
                        end;
                    }
                }

                action(DefaultValues)
                {
                    ApplicationArea = All;
                    Image = Default;
                    Caption = 'Default Values';
                    ToolTip = 'Click to view default values of data types.';
                    RunObject = Codeunit CrnDataTypes;
                }
            }
            group(Codeunits)
            {
                action(InternalAccess)
                {
                    ApplicationArea = All;
                    Image = SocialSecurity;
                    Caption = 'Internal Access';
                    ToolTip = 'Click to run CrnCodeunitInternalAccess';

                    trigger OnAction()
                    var
                        CrnCodeunitInternalAccess: Codeunit CrnCodeunitInternalAccess;
                    begin
                        CrnCodeunitInternalAccess.RunFunctionWithParm(5, '10');
                    end;
                }
                action(PublicAccess)
                {
                    ApplicationArea = All;
                    Image = SocialSecurity;
                    Caption = 'Public Access';
                    ToolTip = 'Click to run CrnCodeunitPublicAccess';

                    trigger OnAction()
                    var
                        CrnCodeunitPublicAccess: Codeunit CrnCodeunitPublicAccess;
                    begin
                        CrnCodeunitPublicAccess.RunFunctionWithParm(5, '10');
                    end;
                }
                action(Symbols)
                {
                    ApplicationArea = All;
                    Image = SocialSecurity;
                    Caption = 'Symbols';
                    ToolTip = 'Click to run CrnSymbols';
                    RunObject = Codeunit CrnSymbols;
                }

            }
            group(InteractionFunctions)
            {
                Caption = 'Interactions Functions';

                action(MessageFunction)
                {
                    ApplicationArea = All;
                    Image = Select;
                    Caption = 'Messaga Function';
                    ToolTip = 'Click to run Message function.';

                    trigger OnAction()
                    var
                        CrnInteractionFunctions: Codeunit CrnInteractionFunctions;
                    begin
                        CrnInteractionFunctions.ShowMessage();
                    end;
                }
                action(StrMenuFunction)
                {
                    ApplicationArea = All;
                    Image = Select;
                    Caption = 'StrMenu Function';
                    ToolTip = 'Click to run StrMenu function.';

                    trigger OnAction()
                    var
                        CrnInteractionFunctions: Codeunit CrnInteractionFunctions;
                    begin
                        CrnInteractionFunctions.ShowStrMenu();
                    end;
                }
                action(ConfirmFunction)
                {
                    ApplicationArea = All;
                    Image = Select;
                    Caption = 'Confirm Function';
                    ToolTip = 'Click to run Confirm function.';

                    trigger OnAction()
                    var
                        CrnInteractionFunctions: Codeunit CrnInteractionFunctions;
                    begin
                        CrnInteractionFunctions.ShowConfirm();
                    end;
                }
                action(ErrorFunction)
                {
                    ApplicationArea = All;
                    Image = Select;
                    Caption = 'Error Function';
                    ToolTip = 'Click to run Error function.';

                    trigger OnAction()
                    var
                        CrnInteractionFunctions: Codeunit CrnInteractionFunctions;
                    begin
                        CrnInteractionFunctions.ShowError();
                    end;
                }
            }
        }
    }
}