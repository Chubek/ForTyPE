module TeXCommand = struct
  type catcode = 
    | CMDEscape
    | CMDRelax
    | CMDLBrace
    | CMDRBrace
    | CMDMathShift
    | CMDTabMark
    | CMDCarRet
    | CMDOutparam
    | CMDMacparam
    | CMDSupmark
    | CMDSubmark
    | CMDIgnore
    | CMDEndV
    | CMDSpaceR
    | CMDLetter
    | CMDOtherChar
    | CMDActiveChar
    | CMDParEnd
    | CMDMatch
    | CMDComment
    | CMDEndMatch
    | CMDStop
    | CMDInvalidChar
    | CMDDelimNum
    | CMDMaxCharCode
  type ordinary = 
    | CMDCharNum
    | CMDMathCharNum
    | CMDMark
    | CMDXray
    | CMDMakeBox
    | CMDHmove
    | CMDVmove
    | CMDUnHbox
    | CMDUnVbox
    | CMDRemoveItem
    | CMDHskip
    | CMDVskip
    | CMDMskip
    | CMDKern
    | CMDMkern
    | CMDLeadership
    | CMDHaligh
    | CMDValigh
    | CMDNoalign
    | CMDVrule
    | CMDHrule
    | CMDInsert
    | CMDVadjust
    | CMDIgnoreSpaces
    | CMDAfterAssignment
    | CMDAfterGroup
    | CMDBreakPenalty
    | CMDStartPar
    | CMDItalCorr
    | CMDAccent
    | CMDMathAccent
    | CMDDiscretionary
    | CMDEqno
    | CMDLeftRight
    | CMDMathComp
    | CMDLimitSwitch
    | CMDAbove
    | CMDMathStyle
    | CMDMathChoice
    | CMDNonScript
    | CMDVcenter
    | CMDCaseShift
    | CMDMessage
    | CMDExtension
    | CMDInStream
    | CMDBeginGroup
    | CMDEndGroup
    | CMDOmit
    | CMDExSpace
    | CMDNoBoundary
    | CMDRadical
    | CMDEndCsName
    | CMDMinInternal
    | CMDCharGiven
    | CMDMathGiven
    | CMDLastItem
    | CMDMaxNonPrefixCommand
  type special =
    | CMDToksRegister
    | CMDAssignToks
    | CMDAssignInt
    | CMDAssignDimen
    | CMDAssignGlue
    | CMDAssignMuGlue
    | CMDFontDimen
    | CMDFontInt
    | CMDSetAux
    | CMDPrevGraf
    | CMDSetPrevGraf
    | CMDSetPageDimen
    | CMDSetShape
    | CMDDefCode
    | CMDDefFamily
    | CMDSetFont
    | CMDDefFont
    | CMDRegister
    | CMDMaxInternal
    | CMDAdvance
    | CMDMultiply
    | CMDDivide
    | CMDPrefix
    | CMDLet
    | CMDShorthandDef
    | CMDReadToCS
    | CMDDef
    | CMDSetBox
    | CMDHyphData
    | CMDSetInteraction
  type internal =
    | CMDUndefined
    | CMDExpandAfter
    | CMDNoExpand
    | CMDInput
    | CMDIfTest
    | CMDFiOrElse
    | CMDCsName
    | CMDConvert
    | CMDThe
    | CMDTopBotMark
    | CMDCall
    | CMDLongCall
    | CMDOuterCall
    | CMDLongOuterCall
    | CMDEndTemplate
    | CMDDontExpand
    | CMDGlueRef
    | CMDShapeRef
    | CMDBoxRef
    | CMDData
end
