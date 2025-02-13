; ModuleID = 'simulator/nedelements.cc'
source_filename = "simulator/nedelements.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.NedFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.CommentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PackageElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ImportElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.PropertyDeclElement = type <{ %class.NEDElement, %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.ExtendsElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.InterfaceNameElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.SimpleModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ModuleInterfaceElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CompoundModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ChannelInterfaceElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ChannelElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ParametersElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.PatternElement = type <{ %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyKeyElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.SubmoduleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionsElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.ConnectionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, i32 }
%class.ChannelSpecElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.LoopElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConditionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ExpressionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.MsgFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NamespaceElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CplusplusElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.StructDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ClassDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%class.MessageDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.PacketDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.EnumFieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.MessageElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PacketElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ClassElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.StructElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.FieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i8, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.UnknownElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDException = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }

$_ZN17NEDElementFactoryC2Ev = comdat any

$_ZN12NEDExceptionD2Ev = comdat any

$_ZN12FilesElementD0Ev = comdat any

$_ZNK12FilesElement10getTagNameEv = comdat any

$_ZNK12FilesElement10getTagCodeEv = comdat any

$_ZNK12FilesElement12getAttributeEPKc = comdat any

$_ZN12FilesElement12setAttributeEPKcS1_ = comdat any

$_ZN14NedFileElementD2Ev = comdat any

$_ZN14NedFileElementD0Ev = comdat any

$_ZNK14NedFileElement10getTagNameEv = comdat any

$_ZNK14NedFileElement10getTagCodeEv = comdat any

$_ZNK14NedFileElement12getAttributeEPKc = comdat any

$_ZN14NedFileElement12setAttributeEPKcS1_ = comdat any

$_ZN14CommentElementD2Ev = comdat any

$_ZN14CommentElementD0Ev = comdat any

$_ZNK14CommentElement10getTagNameEv = comdat any

$_ZNK14CommentElement10getTagCodeEv = comdat any

$_ZNK14CommentElement12getAttributeEPKc = comdat any

$_ZN14CommentElement12setAttributeEPKcS1_ = comdat any

$_ZN14PackageElementD2Ev = comdat any

$_ZN14PackageElementD0Ev = comdat any

$_ZNK14PackageElement10getTagNameEv = comdat any

$_ZNK14PackageElement10getTagCodeEv = comdat any

$_ZNK14PackageElement12getAttributeEPKc = comdat any

$_ZN14PackageElement12setAttributeEPKcS1_ = comdat any

$_ZN13ImportElementD2Ev = comdat any

$_ZN13ImportElementD0Ev = comdat any

$_ZNK13ImportElement10getTagNameEv = comdat any

$_ZNK13ImportElement10getTagCodeEv = comdat any

$_ZNK13ImportElement12getAttributeEPKc = comdat any

$_ZN13ImportElement12setAttributeEPKcS1_ = comdat any

$_ZN19PropertyDeclElementD2Ev = comdat any

$_ZN19PropertyDeclElementD0Ev = comdat any

$_ZNK19PropertyDeclElement10getTagNameEv = comdat any

$_ZNK19PropertyDeclElement10getTagCodeEv = comdat any

$_ZNK19PropertyDeclElement12getAttributeEPKc = comdat any

$_ZN19PropertyDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN14ExtendsElementD2Ev = comdat any

$_ZN14ExtendsElementD0Ev = comdat any

$_ZNK14ExtendsElement10getTagNameEv = comdat any

$_ZNK14ExtendsElement10getTagCodeEv = comdat any

$_ZNK14ExtendsElement12getAttributeEPKc = comdat any

$_ZN14ExtendsElement12setAttributeEPKcS1_ = comdat any

$_ZN20InterfaceNameElementD2Ev = comdat any

$_ZN20InterfaceNameElementD0Ev = comdat any

$_ZNK20InterfaceNameElement10getTagNameEv = comdat any

$_ZNK20InterfaceNameElement10getTagCodeEv = comdat any

$_ZNK20InterfaceNameElement12getAttributeEPKc = comdat any

$_ZN20InterfaceNameElement12setAttributeEPKcS1_ = comdat any

$_ZN19SimpleModuleElementD2Ev = comdat any

$_ZN19SimpleModuleElementD0Ev = comdat any

$_ZNK19SimpleModuleElement10getTagNameEv = comdat any

$_ZNK19SimpleModuleElement10getTagCodeEv = comdat any

$_ZNK19SimpleModuleElement12getAttributeEPKc = comdat any

$_ZN19SimpleModuleElement12setAttributeEPKcS1_ = comdat any

$_ZN22ModuleInterfaceElementD2Ev = comdat any

$_ZN22ModuleInterfaceElementD0Ev = comdat any

$_ZNK22ModuleInterfaceElement10getTagNameEv = comdat any

$_ZNK22ModuleInterfaceElement10getTagCodeEv = comdat any

$_ZNK22ModuleInterfaceElement12getAttributeEPKc = comdat any

$_ZN22ModuleInterfaceElement12setAttributeEPKcS1_ = comdat any

$_ZN21CompoundModuleElementD2Ev = comdat any

$_ZN21CompoundModuleElementD0Ev = comdat any

$_ZNK21CompoundModuleElement10getTagNameEv = comdat any

$_ZNK21CompoundModuleElement10getTagCodeEv = comdat any

$_ZNK21CompoundModuleElement12getAttributeEPKc = comdat any

$_ZN21CompoundModuleElement12setAttributeEPKcS1_ = comdat any

$_ZN23ChannelInterfaceElementD2Ev = comdat any

$_ZN23ChannelInterfaceElementD0Ev = comdat any

$_ZNK23ChannelInterfaceElement10getTagNameEv = comdat any

$_ZNK23ChannelInterfaceElement10getTagCodeEv = comdat any

$_ZNK23ChannelInterfaceElement12getAttributeEPKc = comdat any

$_ZN23ChannelInterfaceElement12setAttributeEPKcS1_ = comdat any

$_ZN14ChannelElementD2Ev = comdat any

$_ZN14ChannelElementD0Ev = comdat any

$_ZNK14ChannelElement10getTagNameEv = comdat any

$_ZNK14ChannelElement10getTagCodeEv = comdat any

$_ZNK14ChannelElement12getAttributeEPKc = comdat any

$_ZN14ChannelElement12setAttributeEPKcS1_ = comdat any

$_ZN17ParametersElementD0Ev = comdat any

$_ZNK17ParametersElement10getTagNameEv = comdat any

$_ZNK17ParametersElement10getTagCodeEv = comdat any

$_ZNK17ParametersElement12getAttributeEPKc = comdat any

$_ZN17ParametersElement12setAttributeEPKcS1_ = comdat any

$_ZN12ParamElementD2Ev = comdat any

$_ZN12ParamElementD0Ev = comdat any

$_ZNK12ParamElement10getTagNameEv = comdat any

$_ZNK12ParamElement10getTagCodeEv = comdat any

$_ZNK12ParamElement12getAttributeEPKc = comdat any

$_ZN12ParamElement12setAttributeEPKcS1_ = comdat any

$_ZN14PatternElementD2Ev = comdat any

$_ZN14PatternElementD0Ev = comdat any

$_ZNK14PatternElement10getTagNameEv = comdat any

$_ZNK14PatternElement10getTagCodeEv = comdat any

$_ZNK14PatternElement12getAttributeEPKc = comdat any

$_ZN14PatternElement12setAttributeEPKcS1_ = comdat any

$_ZN15PropertyElementD2Ev = comdat any

$_ZN15PropertyElementD0Ev = comdat any

$_ZNK15PropertyElement10getTagNameEv = comdat any

$_ZNK15PropertyElement10getTagCodeEv = comdat any

$_ZNK15PropertyElement12getAttributeEPKc = comdat any

$_ZN15PropertyElement12setAttributeEPKcS1_ = comdat any

$_ZN18PropertyKeyElementD2Ev = comdat any

$_ZN18PropertyKeyElementD0Ev = comdat any

$_ZNK18PropertyKeyElement10getTagNameEv = comdat any

$_ZNK18PropertyKeyElement10getTagCodeEv = comdat any

$_ZNK18PropertyKeyElement12getAttributeEPKc = comdat any

$_ZN18PropertyKeyElement12setAttributeEPKcS1_ = comdat any

$_ZN12GatesElementD0Ev = comdat any

$_ZNK12GatesElement10getTagNameEv = comdat any

$_ZNK12GatesElement10getTagCodeEv = comdat any

$_ZNK12GatesElement12getAttributeEPKc = comdat any

$_ZN12GatesElement12setAttributeEPKcS1_ = comdat any

$_ZN11GateElementD2Ev = comdat any

$_ZN11GateElementD0Ev = comdat any

$_ZNK11GateElement10getTagNameEv = comdat any

$_ZNK11GateElement10getTagCodeEv = comdat any

$_ZNK11GateElement12getAttributeEPKc = comdat any

$_ZN11GateElement12setAttributeEPKcS1_ = comdat any

$_ZN12TypesElementD0Ev = comdat any

$_ZNK12TypesElement10getTagNameEv = comdat any

$_ZNK12TypesElement10getTagCodeEv = comdat any

$_ZNK12TypesElement12getAttributeEPKc = comdat any

$_ZN12TypesElement12setAttributeEPKcS1_ = comdat any

$_ZN17SubmodulesElementD0Ev = comdat any

$_ZNK17SubmodulesElement10getTagNameEv = comdat any

$_ZNK17SubmodulesElement10getTagCodeEv = comdat any

$_ZNK17SubmodulesElement12getAttributeEPKc = comdat any

$_ZN17SubmodulesElement12setAttributeEPKcS1_ = comdat any

$_ZN16SubmoduleElementD2Ev = comdat any

$_ZN16SubmoduleElementD0Ev = comdat any

$_ZNK16SubmoduleElement10getTagNameEv = comdat any

$_ZNK16SubmoduleElement10getTagCodeEv = comdat any

$_ZNK16SubmoduleElement12getAttributeEPKc = comdat any

$_ZN16SubmoduleElement12setAttributeEPKcS1_ = comdat any

$_ZN18ConnectionsElementD0Ev = comdat any

$_ZNK18ConnectionsElement10getTagNameEv = comdat any

$_ZNK18ConnectionsElement10getTagCodeEv = comdat any

$_ZNK18ConnectionsElement12getAttributeEPKc = comdat any

$_ZN18ConnectionsElement12setAttributeEPKcS1_ = comdat any

$_ZN17ConnectionElementD2Ev = comdat any

$_ZN17ConnectionElementD0Ev = comdat any

$_ZNK17ConnectionElement10getTagNameEv = comdat any

$_ZNK17ConnectionElement10getTagCodeEv = comdat any

$_ZNK17ConnectionElement12getAttributeEPKc = comdat any

$_ZN17ConnectionElement12setAttributeEPKcS1_ = comdat any

$_ZN18ChannelSpecElementD2Ev = comdat any

$_ZN18ChannelSpecElementD0Ev = comdat any

$_ZNK18ChannelSpecElement10getTagNameEv = comdat any

$_ZNK18ChannelSpecElement10getTagCodeEv = comdat any

$_ZNK18ChannelSpecElement12getAttributeEPKc = comdat any

$_ZN18ChannelSpecElement12setAttributeEPKcS1_ = comdat any

$_ZN22ConnectionGroupElementD0Ev = comdat any

$_ZNK22ConnectionGroupElement10getTagNameEv = comdat any

$_ZNK22ConnectionGroupElement10getTagCodeEv = comdat any

$_ZNK22ConnectionGroupElement12getAttributeEPKc = comdat any

$_ZN22ConnectionGroupElement12setAttributeEPKcS1_ = comdat any

$_ZN11LoopElementD2Ev = comdat any

$_ZN11LoopElementD0Ev = comdat any

$_ZNK11LoopElement10getTagNameEv = comdat any

$_ZNK11LoopElement10getTagCodeEv = comdat any

$_ZNK11LoopElement12getAttributeEPKc = comdat any

$_ZN11LoopElement12setAttributeEPKcS1_ = comdat any

$_ZN16ConditionElementD2Ev = comdat any

$_ZN16ConditionElementD0Ev = comdat any

$_ZNK16ConditionElement10getTagNameEv = comdat any

$_ZNK16ConditionElement10getTagCodeEv = comdat any

$_ZNK16ConditionElement12getAttributeEPKc = comdat any

$_ZN16ConditionElement12setAttributeEPKcS1_ = comdat any

$_ZN17ExpressionElementD2Ev = comdat any

$_ZN17ExpressionElementD0Ev = comdat any

$_ZNK17ExpressionElement10getTagNameEv = comdat any

$_ZNK17ExpressionElement10getTagCodeEv = comdat any

$_ZNK17ExpressionElement12getAttributeEPKc = comdat any

$_ZN17ExpressionElement12setAttributeEPKcS1_ = comdat any

$_ZN15OperatorElementD2Ev = comdat any

$_ZN15OperatorElementD0Ev = comdat any

$_ZNK15OperatorElement10getTagNameEv = comdat any

$_ZNK15OperatorElement10getTagCodeEv = comdat any

$_ZNK15OperatorElement12getAttributeEPKc = comdat any

$_ZN15OperatorElement12setAttributeEPKcS1_ = comdat any

$_ZN15FunctionElementD2Ev = comdat any

$_ZN15FunctionElementD0Ev = comdat any

$_ZNK15FunctionElement10getTagNameEv = comdat any

$_ZNK15FunctionElement10getTagCodeEv = comdat any

$_ZNK15FunctionElement12getAttributeEPKc = comdat any

$_ZN15FunctionElement12setAttributeEPKcS1_ = comdat any

$_ZN12IdentElementD2Ev = comdat any

$_ZN12IdentElementD0Ev = comdat any

$_ZNK12IdentElement10getTagNameEv = comdat any

$_ZNK12IdentElement10getTagCodeEv = comdat any

$_ZNK12IdentElement12getAttributeEPKc = comdat any

$_ZN12IdentElement12setAttributeEPKcS1_ = comdat any

$_ZN14LiteralElementD2Ev = comdat any

$_ZN14LiteralElementD0Ev = comdat any

$_ZNK14LiteralElement10getTagNameEv = comdat any

$_ZNK14LiteralElement10getTagCodeEv = comdat any

$_ZNK14LiteralElement12getAttributeEPKc = comdat any

$_ZN14LiteralElement12setAttributeEPKcS1_ = comdat any

$_ZN14MsgFileElementD2Ev = comdat any

$_ZN14MsgFileElementD0Ev = comdat any

$_ZNK14MsgFileElement10getTagNameEv = comdat any

$_ZNK14MsgFileElement10getTagCodeEv = comdat any

$_ZNK14MsgFileElement12getAttributeEPKc = comdat any

$_ZN14MsgFileElement12setAttributeEPKcS1_ = comdat any

$_ZN16NamespaceElementD2Ev = comdat any

$_ZN16NamespaceElementD0Ev = comdat any

$_ZNK16NamespaceElement10getTagNameEv = comdat any

$_ZNK16NamespaceElement10getTagCodeEv = comdat any

$_ZNK16NamespaceElement12getAttributeEPKc = comdat any

$_ZN16NamespaceElement12setAttributeEPKcS1_ = comdat any

$_ZN16CplusplusElementD2Ev = comdat any

$_ZN16CplusplusElementD0Ev = comdat any

$_ZNK16CplusplusElement10getTagNameEv = comdat any

$_ZNK16CplusplusElement10getTagCodeEv = comdat any

$_ZNK16CplusplusElement12getAttributeEPKc = comdat any

$_ZN16CplusplusElement12setAttributeEPKcS1_ = comdat any

$_ZN17StructDeclElementD2Ev = comdat any

$_ZN17StructDeclElementD0Ev = comdat any

$_ZNK17StructDeclElement10getTagNameEv = comdat any

$_ZNK17StructDeclElement10getTagCodeEv = comdat any

$_ZNK17StructDeclElement12getAttributeEPKc = comdat any

$_ZN17StructDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN16ClassDeclElementD2Ev = comdat any

$_ZN16ClassDeclElementD0Ev = comdat any

$_ZNK16ClassDeclElement10getTagNameEv = comdat any

$_ZNK16ClassDeclElement10getTagCodeEv = comdat any

$_ZNK16ClassDeclElement12getAttributeEPKc = comdat any

$_ZN16ClassDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN18MessageDeclElementD2Ev = comdat any

$_ZN18MessageDeclElementD0Ev = comdat any

$_ZNK18MessageDeclElement10getTagNameEv = comdat any

$_ZNK18MessageDeclElement10getTagCodeEv = comdat any

$_ZNK18MessageDeclElement12getAttributeEPKc = comdat any

$_ZN18MessageDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN17PacketDeclElementD2Ev = comdat any

$_ZN17PacketDeclElementD0Ev = comdat any

$_ZNK17PacketDeclElement10getTagNameEv = comdat any

$_ZNK17PacketDeclElement10getTagCodeEv = comdat any

$_ZNK17PacketDeclElement12getAttributeEPKc = comdat any

$_ZN17PacketDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN15EnumDeclElementD2Ev = comdat any

$_ZN15EnumDeclElementD0Ev = comdat any

$_ZNK15EnumDeclElement10getTagNameEv = comdat any

$_ZNK15EnumDeclElement10getTagCodeEv = comdat any

$_ZNK15EnumDeclElement12getAttributeEPKc = comdat any

$_ZN15EnumDeclElement12setAttributeEPKcS1_ = comdat any

$_ZN11EnumElementD2Ev = comdat any

$_ZN11EnumElementD0Ev = comdat any

$_ZNK11EnumElement10getTagNameEv = comdat any

$_ZNK11EnumElement10getTagCodeEv = comdat any

$_ZNK11EnumElement12getAttributeEPKc = comdat any

$_ZN11EnumElement12setAttributeEPKcS1_ = comdat any

$_ZN17EnumFieldsElementD0Ev = comdat any

$_ZNK17EnumFieldsElement10getTagNameEv = comdat any

$_ZNK17EnumFieldsElement10getTagCodeEv = comdat any

$_ZNK17EnumFieldsElement12getAttributeEPKc = comdat any

$_ZN17EnumFieldsElement12setAttributeEPKcS1_ = comdat any

$_ZN16EnumFieldElementD2Ev = comdat any

$_ZN16EnumFieldElementD0Ev = comdat any

$_ZNK16EnumFieldElement10getTagNameEv = comdat any

$_ZNK16EnumFieldElement10getTagCodeEv = comdat any

$_ZNK16EnumFieldElement12getAttributeEPKc = comdat any

$_ZN16EnumFieldElement12setAttributeEPKcS1_ = comdat any

$_ZN14MessageElementD2Ev = comdat any

$_ZN14MessageElementD0Ev = comdat any

$_ZNK14MessageElement10getTagNameEv = comdat any

$_ZNK14MessageElement10getTagCodeEv = comdat any

$_ZNK14MessageElement12getAttributeEPKc = comdat any

$_ZN14MessageElement12setAttributeEPKcS1_ = comdat any

$_ZN13PacketElementD2Ev = comdat any

$_ZN13PacketElementD0Ev = comdat any

$_ZNK13PacketElement10getTagNameEv = comdat any

$_ZNK13PacketElement10getTagCodeEv = comdat any

$_ZNK13PacketElement12getAttributeEPKc = comdat any

$_ZN13PacketElement12setAttributeEPKcS1_ = comdat any

$_ZN12ClassElementD2Ev = comdat any

$_ZN12ClassElementD0Ev = comdat any

$_ZNK12ClassElement10getTagNameEv = comdat any

$_ZNK12ClassElement10getTagCodeEv = comdat any

$_ZNK12ClassElement12getAttributeEPKc = comdat any

$_ZN12ClassElement12setAttributeEPKcS1_ = comdat any

$_ZN13StructElementD2Ev = comdat any

$_ZN13StructElementD0Ev = comdat any

$_ZNK13StructElement10getTagNameEv = comdat any

$_ZNK13StructElement10getTagCodeEv = comdat any

$_ZNK13StructElement12getAttributeEPKc = comdat any

$_ZN13StructElement12setAttributeEPKcS1_ = comdat any

$_ZN12FieldElementD2Ev = comdat any

$_ZN12FieldElementD0Ev = comdat any

$_ZNK12FieldElement10getTagNameEv = comdat any

$_ZNK12FieldElement10getTagCodeEv = comdat any

$_ZNK12FieldElement12getAttributeEPKc = comdat any

$_ZN12FieldElement12setAttributeEPKcS1_ = comdat any

$_ZN14UnknownElementD2Ev = comdat any

$_ZN14UnknownElementD0Ev = comdat any

$_ZNK14UnknownElement10getTagNameEv = comdat any

$_ZNK14UnknownElement10getTagCodeEv = comdat any

$_ZNK14UnknownElement12getAttributeEPKc = comdat any

$_ZN14UnknownElement12setAttributeEPKcS1_ = comdat any

$_ZN17NEDElementFactoryD2Ev = comdat any

$_ZN17NEDElementFactoryD0Ev = comdat any

$_ZN12NEDExceptionD0Ev = comdat any

$_ZNK12NEDException4whatEv = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTV12NEDException = comdat any

@_ZTV12FilesElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI12FilesElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN12FilesElementD0Ev, ptr @_ZNK12FilesElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12FilesElement10getTagNameEv, ptr @_ZNK12FilesElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12FilesElement16getNumAttributesEv, ptr @_ZNK12FilesElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12FilesElement12getAttributeEi, ptr @_ZNK12FilesElement12getAttributeEPKc, ptr @_ZN12FilesElement12setAttributeEiPKc, ptr @_ZN12FilesElement12setAttributeEPKcS1_, ptr @_ZNK12FilesElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12FilesElement19getNextFilesSiblingEv, ptr @_ZNK12FilesElement20getFirstNedFileChildEv, ptr @_ZNK12FilesElement20getFirstMsgFileChildEv] }, align 8
@_ZTV14NedFileElement = dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTI14NedFileElement, ptr @_ZN14NedFileElementD2Ev, ptr @_ZN14NedFileElementD0Ev, ptr @_ZNK14NedFileElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14NedFileElement10getTagNameEv, ptr @_ZNK14NedFileElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14NedFileElement16getNumAttributesEv, ptr @_ZNK14NedFileElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14NedFileElement12getAttributeEi, ptr @_ZNK14NedFileElement12getAttributeEPKc, ptr @_ZN14NedFileElement12setAttributeEiPKc, ptr @_ZN14NedFileElement12setAttributeEPKcS1_, ptr @_ZNK14NedFileElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14NedFileElement21getNextNedFileSiblingEv, ptr @_ZNK14NedFileElement20getFirstCommentChildEv, ptr @_ZNK14NedFileElement20getFirstPackageChildEv, ptr @_ZNK14NedFileElement19getFirstImportChildEv, ptr @_ZNK14NedFileElement25getFirstPropertyDeclChildEv, ptr @_ZNK14NedFileElement21getFirstPropertyChildEv, ptr @_ZNK14NedFileElement25getFirstSimpleModuleChildEv, ptr @_ZNK14NedFileElement27getFirstCompoundModuleChildEv, ptr @_ZNK14NedFileElement28getFirstModuleInterfaceChildEv, ptr @_ZNK14NedFileElement20getFirstChannelChildEv, ptr @_ZNK14NedFileElement29getFirstChannelInterfaceChildEv] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@_ZTV14CommentElement = dso_local unnamed_addr constant { [39 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTI14CommentElement, ptr @_ZN14CommentElementD2Ev, ptr @_ZN14CommentElementD0Ev, ptr @_ZNK14CommentElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14CommentElement10getTagNameEv, ptr @_ZNK14CommentElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14CommentElement16getNumAttributesEv, ptr @_ZNK14CommentElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14CommentElement12getAttributeEi, ptr @_ZNK14CommentElement12getAttributeEPKc, ptr @_ZN14CommentElement12setAttributeEiPKc, ptr @_ZN14CommentElement12setAttributeEPKcS1_, ptr @_ZNK14CommentElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14CommentElement21getNextCommentSiblingEv] }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"locid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV14PackageElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI14PackageElement, ptr @_ZN14PackageElementD2Ev, ptr @_ZN14PackageElementD0Ev, ptr @_ZNK14PackageElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14PackageElement10getTagNameEv, ptr @_ZNK14PackageElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14PackageElement16getNumAttributesEv, ptr @_ZNK14PackageElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14PackageElement12getAttributeEi, ptr @_ZNK14PackageElement12getAttributeEPKc, ptr @_ZN14PackageElement12setAttributeEiPKc, ptr @_ZN14PackageElement12setAttributeEPKcS1_, ptr @_ZNK14PackageElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14PackageElement21getNextPackageSiblingEv, ptr @_ZNK14PackageElement20getFirstCommentChildEv] }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@_ZTV13ImportElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI13ImportElement, ptr @_ZN13ImportElementD2Ev, ptr @_ZN13ImportElementD0Ev, ptr @_ZNK13ImportElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK13ImportElement10getTagNameEv, ptr @_ZNK13ImportElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK13ImportElement16getNumAttributesEv, ptr @_ZNK13ImportElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK13ImportElement12getAttributeEi, ptr @_ZNK13ImportElement12getAttributeEPKc, ptr @_ZN13ImportElement12setAttributeEiPKc, ptr @_ZN13ImportElement12setAttributeEPKcS1_, ptr @_ZNK13ImportElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK13ImportElement20getNextImportSiblingEv, ptr @_ZNK13ImportElement20getFirstCommentChildEv] }, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"import-spec\00", align 1
@_ZTV19PropertyDeclElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI19PropertyDeclElement, ptr @_ZN19PropertyDeclElementD2Ev, ptr @_ZN19PropertyDeclElementD0Ev, ptr @_ZNK19PropertyDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK19PropertyDeclElement10getTagNameEv, ptr @_ZNK19PropertyDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK19PropertyDeclElement16getNumAttributesEv, ptr @_ZNK19PropertyDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK19PropertyDeclElement12getAttributeEi, ptr @_ZNK19PropertyDeclElement12getAttributeEPKc, ptr @_ZN19PropertyDeclElement12setAttributeEiPKc, ptr @_ZN19PropertyDeclElement12setAttributeEPKcS1_, ptr @_ZNK19PropertyDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK19PropertyDeclElement26getNextPropertyDeclSiblingEv, ptr @_ZNK19PropertyDeclElement20getFirstCommentChildEv, ptr @_ZNK19PropertyDeclElement24getFirstPropertyKeyChildEv, ptr @_ZNK19PropertyDeclElement21getFirstPropertyChildEv] }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"is-array\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTV14ExtendsElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI14ExtendsElement, ptr @_ZN14ExtendsElementD2Ev, ptr @_ZN14ExtendsElementD0Ev, ptr @_ZNK14ExtendsElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14ExtendsElement10getTagNameEv, ptr @_ZNK14ExtendsElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14ExtendsElement16getNumAttributesEv, ptr @_ZNK14ExtendsElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14ExtendsElement12getAttributeEi, ptr @_ZNK14ExtendsElement12getAttributeEPKc, ptr @_ZN14ExtendsElement12setAttributeEiPKc, ptr @_ZN14ExtendsElement12setAttributeEPKcS1_, ptr @_ZNK14ExtendsElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14ExtendsElement21getNextExtendsSiblingEv, ptr @_ZNK14ExtendsElement20getFirstCommentChildEv] }, align 8
@_ZTV20InterfaceNameElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI20InterfaceNameElement, ptr @_ZN20InterfaceNameElementD2Ev, ptr @_ZN20InterfaceNameElementD0Ev, ptr @_ZNK20InterfaceNameElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK20InterfaceNameElement10getTagNameEv, ptr @_ZNK20InterfaceNameElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK20InterfaceNameElement16getNumAttributesEv, ptr @_ZNK20InterfaceNameElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK20InterfaceNameElement12getAttributeEi, ptr @_ZNK20InterfaceNameElement12getAttributeEPKc, ptr @_ZN20InterfaceNameElement12setAttributeEiPKc, ptr @_ZN20InterfaceNameElement12setAttributeEPKcS1_, ptr @_ZNK20InterfaceNameElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK20InterfaceNameElement27getNextInterfaceNameSiblingEv, ptr @_ZNK20InterfaceNameElement20getFirstCommentChildEv] }, align 8
@_ZTV19SimpleModuleElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI19SimpleModuleElement, ptr @_ZN19SimpleModuleElementD2Ev, ptr @_ZN19SimpleModuleElementD0Ev, ptr @_ZNK19SimpleModuleElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK19SimpleModuleElement10getTagNameEv, ptr @_ZNK19SimpleModuleElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK19SimpleModuleElement16getNumAttributesEv, ptr @_ZNK19SimpleModuleElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK19SimpleModuleElement12getAttributeEi, ptr @_ZNK19SimpleModuleElement12getAttributeEPKc, ptr @_ZN19SimpleModuleElement12setAttributeEiPKc, ptr @_ZN19SimpleModuleElement12setAttributeEPKcS1_, ptr @_ZNK19SimpleModuleElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK19SimpleModuleElement26getNextSimpleModuleSiblingEv, ptr @_ZNK19SimpleModuleElement20getFirstCommentChildEv, ptr @_ZNK19SimpleModuleElement20getFirstExtendsChildEv, ptr @_ZNK19SimpleModuleElement26getFirstInterfaceNameChildEv, ptr @_ZNK19SimpleModuleElement23getFirstParametersChildEv, ptr @_ZNK19SimpleModuleElement18getFirstGatesChildEv] }, align 8
@_ZTV22ModuleInterfaceElement = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI22ModuleInterfaceElement, ptr @_ZN22ModuleInterfaceElementD2Ev, ptr @_ZN22ModuleInterfaceElementD0Ev, ptr @_ZNK22ModuleInterfaceElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK22ModuleInterfaceElement10getTagNameEv, ptr @_ZNK22ModuleInterfaceElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK22ModuleInterfaceElement16getNumAttributesEv, ptr @_ZNK22ModuleInterfaceElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK22ModuleInterfaceElement12getAttributeEi, ptr @_ZNK22ModuleInterfaceElement12getAttributeEPKc, ptr @_ZN22ModuleInterfaceElement12setAttributeEiPKc, ptr @_ZN22ModuleInterfaceElement12setAttributeEPKcS1_, ptr @_ZNK22ModuleInterfaceElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK22ModuleInterfaceElement29getNextModuleInterfaceSiblingEv, ptr @_ZNK22ModuleInterfaceElement20getFirstCommentChildEv, ptr @_ZNK22ModuleInterfaceElement20getFirstExtendsChildEv, ptr @_ZNK22ModuleInterfaceElement23getFirstParametersChildEv, ptr @_ZNK22ModuleInterfaceElement18getFirstGatesChildEv] }, align 8
@_ZTV21CompoundModuleElement = dso_local unnamed_addr constant { [47 x ptr] } { [47 x ptr] [ptr null, ptr @_ZTI21CompoundModuleElement, ptr @_ZN21CompoundModuleElementD2Ev, ptr @_ZN21CompoundModuleElementD0Ev, ptr @_ZNK21CompoundModuleElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK21CompoundModuleElement10getTagNameEv, ptr @_ZNK21CompoundModuleElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK21CompoundModuleElement16getNumAttributesEv, ptr @_ZNK21CompoundModuleElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK21CompoundModuleElement12getAttributeEi, ptr @_ZNK21CompoundModuleElement12getAttributeEPKc, ptr @_ZN21CompoundModuleElement12setAttributeEiPKc, ptr @_ZN21CompoundModuleElement12setAttributeEPKcS1_, ptr @_ZNK21CompoundModuleElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK21CompoundModuleElement28getNextCompoundModuleSiblingEv, ptr @_ZNK21CompoundModuleElement20getFirstCommentChildEv, ptr @_ZNK21CompoundModuleElement20getFirstExtendsChildEv, ptr @_ZNK21CompoundModuleElement26getFirstInterfaceNameChildEv, ptr @_ZNK21CompoundModuleElement23getFirstParametersChildEv, ptr @_ZNK21CompoundModuleElement18getFirstGatesChildEv, ptr @_ZNK21CompoundModuleElement18getFirstTypesChildEv, ptr @_ZNK21CompoundModuleElement23getFirstSubmodulesChildEv, ptr @_ZNK21CompoundModuleElement24getFirstConnectionsChildEv] }, align 8
@_ZTV23ChannelInterfaceElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI23ChannelInterfaceElement, ptr @_ZN23ChannelInterfaceElementD2Ev, ptr @_ZN23ChannelInterfaceElementD0Ev, ptr @_ZNK23ChannelInterfaceElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK23ChannelInterfaceElement10getTagNameEv, ptr @_ZNK23ChannelInterfaceElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK23ChannelInterfaceElement16getNumAttributesEv, ptr @_ZNK23ChannelInterfaceElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK23ChannelInterfaceElement12getAttributeEi, ptr @_ZNK23ChannelInterfaceElement12getAttributeEPKc, ptr @_ZN23ChannelInterfaceElement12setAttributeEiPKc, ptr @_ZN23ChannelInterfaceElement12setAttributeEPKcS1_, ptr @_ZNK23ChannelInterfaceElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK23ChannelInterfaceElement30getNextChannelInterfaceSiblingEv, ptr @_ZNK23ChannelInterfaceElement20getFirstCommentChildEv, ptr @_ZNK23ChannelInterfaceElement20getFirstExtendsChildEv, ptr @_ZNK23ChannelInterfaceElement23getFirstParametersChildEv] }, align 8
@_ZTV14ChannelElement = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI14ChannelElement, ptr @_ZN14ChannelElementD2Ev, ptr @_ZN14ChannelElementD0Ev, ptr @_ZNK14ChannelElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14ChannelElement10getTagNameEv, ptr @_ZNK14ChannelElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14ChannelElement16getNumAttributesEv, ptr @_ZNK14ChannelElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14ChannelElement12getAttributeEi, ptr @_ZNK14ChannelElement12getAttributeEPKc, ptr @_ZN14ChannelElement12setAttributeEiPKc, ptr @_ZN14ChannelElement12setAttributeEPKcS1_, ptr @_ZNK14ChannelElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14ChannelElement21getNextChannelSiblingEv, ptr @_ZNK14ChannelElement20getFirstCommentChildEv, ptr @_ZNK14ChannelElement20getFirstExtendsChildEv, ptr @_ZNK14ChannelElement26getFirstInterfaceNameChildEv, ptr @_ZNK14ChannelElement23getFirstParametersChildEv] }, align 8
@_ZTV17ParametersElement = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI17ParametersElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN17ParametersElementD0Ev, ptr @_ZNK17ParametersElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17ParametersElement10getTagNameEv, ptr @_ZNK17ParametersElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17ParametersElement16getNumAttributesEv, ptr @_ZNK17ParametersElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17ParametersElement12getAttributeEi, ptr @_ZNK17ParametersElement12getAttributeEPKc, ptr @_ZN17ParametersElement12setAttributeEiPKc, ptr @_ZN17ParametersElement12setAttributeEPKcS1_, ptr @_ZNK17ParametersElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17ParametersElement24getNextParametersSiblingEv, ptr @_ZNK17ParametersElement20getFirstCommentChildEv, ptr @_ZNK17ParametersElement21getFirstPropertyChildEv, ptr @_ZNK17ParametersElement18getFirstParamChildEv, ptr @_ZNK17ParametersElement20getFirstPatternChildEv] }, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"is-implicit\00", align 1
@_ZL12partype_vals = internal global [6 x ptr] [ptr @.str.5, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], align 16
@_ZL12partype_nums = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@_ZTV12ParamElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI12ParamElement, ptr @_ZN12ParamElementD2Ev, ptr @_ZN12ParamElementD0Ev, ptr @_ZNK12ParamElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12ParamElement10getTagNameEv, ptr @_ZNK12ParamElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12ParamElement16getNumAttributesEv, ptr @_ZNK12ParamElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12ParamElement12getAttributeEi, ptr @_ZNK12ParamElement12getAttributeEPKc, ptr @_ZN12ParamElement12setAttributeEiPKc, ptr @_ZN12ParamElement12setAttributeEPKcS1_, ptr @_ZNK12ParamElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12ParamElement19getNextParamSiblingEv, ptr @_ZNK12ParamElement20getFirstCommentChildEv, ptr @_ZNK12ParamElement23getFirstExpressionChildEv, ptr @_ZNK12ParamElement21getFirstPropertyChildEv] }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"is-volatile\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"is-default\00", align 1
@_ZTV14PatternElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI14PatternElement, ptr @_ZN14PatternElementD2Ev, ptr @_ZN14PatternElementD0Ev, ptr @_ZNK14PatternElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14PatternElement10getTagNameEv, ptr @_ZNK14PatternElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14PatternElement16getNumAttributesEv, ptr @_ZNK14PatternElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14PatternElement12getAttributeEi, ptr @_ZNK14PatternElement12getAttributeEPKc, ptr @_ZN14PatternElement12setAttributeEiPKc, ptr @_ZN14PatternElement12setAttributeEPKcS1_, ptr @_ZNK14PatternElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14PatternElement21getNextPatternSiblingEv, ptr @_ZNK14PatternElement20getFirstCommentChildEv, ptr @_ZNK14PatternElement23getFirstExpressionChildEv, ptr @_ZNK14PatternElement21getFirstPropertyChildEv] }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@_ZTV15PropertyElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI15PropertyElement, ptr @_ZN15PropertyElementD2Ev, ptr @_ZN15PropertyElementD0Ev, ptr @_ZNK15PropertyElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK15PropertyElement10getTagNameEv, ptr @_ZNK15PropertyElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK15PropertyElement16getNumAttributesEv, ptr @_ZNK15PropertyElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK15PropertyElement12getAttributeEi, ptr @_ZNK15PropertyElement12getAttributeEPKc, ptr @_ZN15PropertyElement12setAttributeEiPKc, ptr @_ZN15PropertyElement12setAttributeEPKcS1_, ptr @_ZNK15PropertyElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK15PropertyElement22getNextPropertySiblingEv, ptr @_ZNK15PropertyElement20getFirstCommentChildEv, ptr @_ZNK15PropertyElement24getFirstPropertyKeyChildEv] }, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@_ZTV18PropertyKeyElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI18PropertyKeyElement, ptr @_ZN18PropertyKeyElementD2Ev, ptr @_ZN18PropertyKeyElementD0Ev, ptr @_ZNK18PropertyKeyElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK18PropertyKeyElement10getTagNameEv, ptr @_ZNK18PropertyKeyElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK18PropertyKeyElement16getNumAttributesEv, ptr @_ZNK18PropertyKeyElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK18PropertyKeyElement12getAttributeEi, ptr @_ZNK18PropertyKeyElement12getAttributeEPKc, ptr @_ZN18PropertyKeyElement12setAttributeEiPKc, ptr @_ZN18PropertyKeyElement12setAttributeEPKcS1_, ptr @_ZNK18PropertyKeyElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK18PropertyKeyElement25getNextPropertyKeySiblingEv, ptr @_ZNK18PropertyKeyElement20getFirstCommentChildEv, ptr @_ZNK18PropertyKeyElement20getFirstLiteralChildEv] }, align 8
@_ZTV12GatesElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI12GatesElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN12GatesElementD0Ev, ptr @_ZNK12GatesElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12GatesElement10getTagNameEv, ptr @_ZNK12GatesElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12GatesElement16getNumAttributesEv, ptr @_ZNK12GatesElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12GatesElement12getAttributeEi, ptr @_ZNK12GatesElement12getAttributeEPKc, ptr @_ZN12GatesElement12setAttributeEiPKc, ptr @_ZN12GatesElement12setAttributeEPKcS1_, ptr @_ZNK12GatesElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12GatesElement19getNextGatesSiblingEv, ptr @_ZNK12GatesElement20getFirstCommentChildEv, ptr @_ZNK12GatesElement17getFirstGateChildEv] }, align 8
@_ZL13gatetype_vals = internal global [4 x ptr] [ptr @.str.5, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 16
@_ZL13gatetype_nums = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@_ZTV11GateElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI11GateElement, ptr @_ZN11GateElementD2Ev, ptr @_ZN11GateElementD0Ev, ptr @_ZNK11GateElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK11GateElement10getTagNameEv, ptr @_ZNK11GateElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK11GateElement16getNumAttributesEv, ptr @_ZNK11GateElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK11GateElement12getAttributeEi, ptr @_ZNK11GateElement12getAttributeEPKc, ptr @_ZN11GateElement12setAttributeEiPKc, ptr @_ZN11GateElement12setAttributeEPKcS1_, ptr @_ZNK11GateElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK11GateElement18getNextGateSiblingEv, ptr @_ZNK11GateElement20getFirstCommentChildEv, ptr @_ZNK11GateElement23getFirstExpressionChildEv, ptr @_ZNK11GateElement21getFirstPropertyChildEv] }, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"is-vector\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"vector-size\00", align 1
@_ZTV12TypesElement = dso_local unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTI12TypesElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN12TypesElementD0Ev, ptr @_ZNK12TypesElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12TypesElement10getTagNameEv, ptr @_ZNK12TypesElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12TypesElement16getNumAttributesEv, ptr @_ZNK12TypesElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12TypesElement12getAttributeEi, ptr @_ZNK12TypesElement12getAttributeEPKc, ptr @_ZN12TypesElement12setAttributeEiPKc, ptr @_ZN12TypesElement12setAttributeEPKcS1_, ptr @_ZNK12TypesElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12TypesElement19getNextTypesSiblingEv, ptr @_ZNK12TypesElement20getFirstCommentChildEv, ptr @_ZNK12TypesElement20getFirstChannelChildEv, ptr @_ZNK12TypesElement29getFirstChannelInterfaceChildEv, ptr @_ZNK12TypesElement25getFirstSimpleModuleChildEv, ptr @_ZNK12TypesElement27getFirstCompoundModuleChildEv, ptr @_ZNK12TypesElement28getFirstModuleInterfaceChildEv] }, align 8
@_ZTV17SubmodulesElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI17SubmodulesElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN17SubmodulesElementD0Ev, ptr @_ZNK17SubmodulesElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17SubmodulesElement10getTagNameEv, ptr @_ZNK17SubmodulesElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17SubmodulesElement16getNumAttributesEv, ptr @_ZNK17SubmodulesElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17SubmodulesElement12getAttributeEi, ptr @_ZNK17SubmodulesElement12getAttributeEPKc, ptr @_ZN17SubmodulesElement12setAttributeEiPKc, ptr @_ZN17SubmodulesElement12setAttributeEPKcS1_, ptr @_ZNK17SubmodulesElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17SubmodulesElement24getNextSubmodulesSiblingEv, ptr @_ZNK17SubmodulesElement20getFirstCommentChildEv, ptr @_ZNK17SubmodulesElement22getFirstSubmoduleChildEv] }, align 8
@_ZTV16SubmoduleElement = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI16SubmoduleElement, ptr @_ZN16SubmoduleElementD2Ev, ptr @_ZN16SubmoduleElementD0Ev, ptr @_ZNK16SubmoduleElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16SubmoduleElement10getTagNameEv, ptr @_ZNK16SubmoduleElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16SubmoduleElement16getNumAttributesEv, ptr @_ZNK16SubmoduleElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16SubmoduleElement12getAttributeEi, ptr @_ZNK16SubmoduleElement12getAttributeEPKc, ptr @_ZN16SubmoduleElement12setAttributeEiPKc, ptr @_ZN16SubmoduleElement12setAttributeEPKcS1_, ptr @_ZNK16SubmoduleElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16SubmoduleElement23getNextSubmoduleSiblingEv, ptr @_ZNK16SubmoduleElement20getFirstCommentChildEv, ptr @_ZNK16SubmoduleElement23getFirstExpressionChildEv, ptr @_ZNK16SubmoduleElement23getFirstParametersChildEv, ptr @_ZNK16SubmoduleElement18getFirstGatesChildEv] }, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"like-type\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"like-param\00", align 1
@_ZTV18ConnectionsElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI18ConnectionsElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN18ConnectionsElementD0Ev, ptr @_ZNK18ConnectionsElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK18ConnectionsElement10getTagNameEv, ptr @_ZNK18ConnectionsElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK18ConnectionsElement16getNumAttributesEv, ptr @_ZNK18ConnectionsElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK18ConnectionsElement12getAttributeEi, ptr @_ZNK18ConnectionsElement12getAttributeEPKc, ptr @_ZN18ConnectionsElement12setAttributeEiPKc, ptr @_ZN18ConnectionsElement12setAttributeEPKcS1_, ptr @_ZNK18ConnectionsElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK18ConnectionsElement25getNextConnectionsSiblingEv, ptr @_ZNK18ConnectionsElement20getFirstCommentChildEv, ptr @_ZNK18ConnectionsElement23getFirstConnectionChildEv, ptr @_ZNK18ConnectionsElement28getFirstConnectionGroupChildEv] }, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"allow-unconnected\00", align 1
@_ZL12subgate_vals = internal global [3 x ptr] [ptr @.str.5, ptr @.str.112, ptr @.str.113], align 16
@_ZL12subgate_nums = internal global [3 x i32] [i32 0, i32 1, i32 2], align 4
@_ZL13arrowdir_vals = internal global [3 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116], align 16
@_ZL13arrowdir_nums = internal global [3 x i32] [i32 1, i32 0, i32 2], align 4
@_ZTV17ConnectionElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI17ConnectionElement, ptr @_ZN17ConnectionElementD2Ev, ptr @_ZN17ConnectionElementD0Ev, ptr @_ZNK17ConnectionElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17ConnectionElement10getTagNameEv, ptr @_ZNK17ConnectionElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17ConnectionElement16getNumAttributesEv, ptr @_ZNK17ConnectionElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17ConnectionElement12getAttributeEi, ptr @_ZNK17ConnectionElement12getAttributeEPKc, ptr @_ZN17ConnectionElement12setAttributeEiPKc, ptr @_ZN17ConnectionElement12setAttributeEPKcS1_, ptr @_ZNK17ConnectionElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17ConnectionElement24getNextConnectionSiblingEv, ptr @_ZNK17ConnectionElement20getFirstCommentChildEv, ptr @_ZNK17ConnectionElement23getFirstExpressionChildEv, ptr @_ZNK17ConnectionElement24getFirstChannelSpecChildEv, ptr @_ZNK17ConnectionElement17getFirstLoopChildEv, ptr @_ZNK17ConnectionElement22getFirstConditionChildEv] }, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"src-module\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"src-gate\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"src-gate-plusplus\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"src-gate-subg\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"dest-module\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"dest-gate\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"dest-gate-plusplus\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"dest-gate-subg\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"arrow-direction\00", align 1
@_ZTV18ChannelSpecElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI18ChannelSpecElement, ptr @_ZN18ChannelSpecElementD2Ev, ptr @_ZN18ChannelSpecElementD0Ev, ptr @_ZNK18ChannelSpecElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK18ChannelSpecElement10getTagNameEv, ptr @_ZNK18ChannelSpecElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK18ChannelSpecElement16getNumAttributesEv, ptr @_ZNK18ChannelSpecElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK18ChannelSpecElement12getAttributeEi, ptr @_ZNK18ChannelSpecElement12getAttributeEPKc, ptr @_ZN18ChannelSpecElement12setAttributeEiPKc, ptr @_ZN18ChannelSpecElement12setAttributeEPKcS1_, ptr @_ZNK18ChannelSpecElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK18ChannelSpecElement25getNextChannelSpecSiblingEv, ptr @_ZNK18ChannelSpecElement20getFirstCommentChildEv, ptr @_ZNK18ChannelSpecElement23getFirstExpressionChildEv, ptr @_ZNK18ChannelSpecElement23getFirstParametersChildEv] }, align 8
@_ZTV22ConnectionGroupElement = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI22ConnectionGroupElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN22ConnectionGroupElementD0Ev, ptr @_ZNK22ConnectionGroupElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK22ConnectionGroupElement10getTagNameEv, ptr @_ZNK22ConnectionGroupElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK22ConnectionGroupElement16getNumAttributesEv, ptr @_ZNK22ConnectionGroupElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK22ConnectionGroupElement12getAttributeEi, ptr @_ZNK22ConnectionGroupElement12getAttributeEPKc, ptr @_ZN22ConnectionGroupElement12setAttributeEiPKc, ptr @_ZN22ConnectionGroupElement12setAttributeEPKcS1_, ptr @_ZNK22ConnectionGroupElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK22ConnectionGroupElement29getNextConnectionGroupSiblingEv, ptr @_ZNK22ConnectionGroupElement20getFirstCommentChildEv, ptr @_ZNK22ConnectionGroupElement17getFirstLoopChildEv, ptr @_ZNK22ConnectionGroupElement22getFirstConditionChildEv, ptr @_ZNK22ConnectionGroupElement23getFirstConnectionChildEv] }, align 8
@_ZTV11LoopElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI11LoopElement, ptr @_ZN11LoopElementD2Ev, ptr @_ZN11LoopElementD0Ev, ptr @_ZNK11LoopElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK11LoopElement10getTagNameEv, ptr @_ZNK11LoopElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK11LoopElement16getNumAttributesEv, ptr @_ZNK11LoopElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK11LoopElement12getAttributeEi, ptr @_ZNK11LoopElement12getAttributeEPKc, ptr @_ZN11LoopElement12setAttributeEiPKc, ptr @_ZN11LoopElement12setAttributeEPKcS1_, ptr @_ZNK11LoopElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK11LoopElement18getNextLoopSiblingEv, ptr @_ZNK11LoopElement20getFirstCommentChildEv, ptr @_ZNK11LoopElement23getFirstExpressionChildEv] }, align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"param-name\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"from-value\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"to-value\00", align 1
@_ZTV16ConditionElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI16ConditionElement, ptr @_ZN16ConditionElementD2Ev, ptr @_ZN16ConditionElementD0Ev, ptr @_ZNK16ConditionElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16ConditionElement10getTagNameEv, ptr @_ZNK16ConditionElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16ConditionElement16getNumAttributesEv, ptr @_ZNK16ConditionElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16ConditionElement12getAttributeEi, ptr @_ZNK16ConditionElement12getAttributeEPKc, ptr @_ZN16ConditionElement12setAttributeEiPKc, ptr @_ZN16ConditionElement12setAttributeEPKcS1_, ptr @_ZNK16ConditionElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16ConditionElement23getNextConditionSiblingEv, ptr @_ZNK16ConditionElement20getFirstCommentChildEv, ptr @_ZNK16ConditionElement23getFirstExpressionChildEv] }, align 8
@.str.38 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@_ZTV17ExpressionElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI17ExpressionElement, ptr @_ZN17ExpressionElementD2Ev, ptr @_ZN17ExpressionElementD0Ev, ptr @_ZNK17ExpressionElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17ExpressionElement10getTagNameEv, ptr @_ZNK17ExpressionElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17ExpressionElement16getNumAttributesEv, ptr @_ZNK17ExpressionElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17ExpressionElement12getAttributeEi, ptr @_ZNK17ExpressionElement12getAttributeEPKc, ptr @_ZN17ExpressionElement12setAttributeEiPKc, ptr @_ZN17ExpressionElement12setAttributeEPKcS1_, ptr @_ZNK17ExpressionElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17ExpressionElement24getNextExpressionSiblingEv, ptr @_ZNK17ExpressionElement20getFirstCommentChildEv, ptr @_ZNK17ExpressionElement21getFirstOperatorChildEv, ptr @_ZNK17ExpressionElement21getFirstFunctionChildEv, ptr @_ZNK17ExpressionElement18getFirstIdentChildEv, ptr @_ZNK17ExpressionElement20getFirstLiteralChildEv] }, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@_ZTV15OperatorElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI15OperatorElement, ptr @_ZN15OperatorElementD2Ev, ptr @_ZN15OperatorElementD0Ev, ptr @_ZNK15OperatorElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK15OperatorElement10getTagNameEv, ptr @_ZNK15OperatorElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK15OperatorElement16getNumAttributesEv, ptr @_ZNK15OperatorElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK15OperatorElement12getAttributeEi, ptr @_ZNK15OperatorElement12getAttributeEPKc, ptr @_ZN15OperatorElement12setAttributeEiPKc, ptr @_ZN15OperatorElement12setAttributeEPKcS1_, ptr @_ZNK15OperatorElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK15OperatorElement22getNextOperatorSiblingEv, ptr @_ZNK15OperatorElement20getFirstCommentChildEv, ptr @_ZNK15OperatorElement21getFirstOperatorChildEv, ptr @_ZNK15OperatorElement21getFirstFunctionChildEv, ptr @_ZNK15OperatorElement18getFirstIdentChildEv, ptr @_ZNK15OperatorElement20getFirstLiteralChildEv] }, align 8
@_ZTV15FunctionElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI15FunctionElement, ptr @_ZN15FunctionElementD2Ev, ptr @_ZN15FunctionElementD0Ev, ptr @_ZNK15FunctionElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK15FunctionElement10getTagNameEv, ptr @_ZNK15FunctionElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK15FunctionElement16getNumAttributesEv, ptr @_ZNK15FunctionElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK15FunctionElement12getAttributeEi, ptr @_ZNK15FunctionElement12getAttributeEPKc, ptr @_ZN15FunctionElement12setAttributeEiPKc, ptr @_ZN15FunctionElement12setAttributeEPKcS1_, ptr @_ZNK15FunctionElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK15FunctionElement22getNextFunctionSiblingEv, ptr @_ZNK15FunctionElement20getFirstCommentChildEv, ptr @_ZNK15FunctionElement21getFirstOperatorChildEv, ptr @_ZNK15FunctionElement21getFirstFunctionChildEv, ptr @_ZNK15FunctionElement18getFirstIdentChildEv, ptr @_ZNK15FunctionElement20getFirstLiteralChildEv] }, align 8
@_ZTV12IdentElement = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTI12IdentElement, ptr @_ZN12IdentElementD2Ev, ptr @_ZN12IdentElementD0Ev, ptr @_ZNK12IdentElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12IdentElement10getTagNameEv, ptr @_ZNK12IdentElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12IdentElement16getNumAttributesEv, ptr @_ZNK12IdentElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12IdentElement12getAttributeEi, ptr @_ZNK12IdentElement12getAttributeEPKc, ptr @_ZN12IdentElement12setAttributeEiPKc, ptr @_ZN12IdentElement12setAttributeEPKcS1_, ptr @_ZNK12IdentElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12IdentElement19getNextIdentSiblingEv, ptr @_ZNK12IdentElement20getFirstCommentChildEv, ptr @_ZNK12IdentElement21getFirstOperatorChildEv, ptr @_ZNK12IdentElement21getFirstFunctionChildEv, ptr @_ZNK12IdentElement18getFirstIdentChildEv, ptr @_ZNK12IdentElement20getFirstLiteralChildEv] }, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@_ZL12littype_vals = internal global [5 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.117], align 16
@_ZL12littype_nums = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@_ZTV14LiteralElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI14LiteralElement, ptr @_ZN14LiteralElementD2Ev, ptr @_ZN14LiteralElementD0Ev, ptr @_ZNK14LiteralElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14LiteralElement10getTagNameEv, ptr @_ZNK14LiteralElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14LiteralElement16getNumAttributesEv, ptr @_ZNK14LiteralElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14LiteralElement12getAttributeEi, ptr @_ZNK14LiteralElement12getAttributeEPKc, ptr @_ZN14LiteralElement12setAttributeEiPKc, ptr @_ZN14LiteralElement12setAttributeEPKcS1_, ptr @_ZNK14LiteralElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14LiteralElement21getNextLiteralSiblingEv, ptr @_ZNK14LiteralElement20getFirstCommentChildEv] }, align 8
@.str.41 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@_ZTV14MsgFileElement = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTI14MsgFileElement, ptr @_ZN14MsgFileElementD2Ev, ptr @_ZN14MsgFileElementD0Ev, ptr @_ZNK14MsgFileElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14MsgFileElement10getTagNameEv, ptr @_ZNK14MsgFileElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14MsgFileElement16getNumAttributesEv, ptr @_ZNK14MsgFileElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14MsgFileElement12getAttributeEi, ptr @_ZNK14MsgFileElement12getAttributeEPKc, ptr @_ZN14MsgFileElement12setAttributeEiPKc, ptr @_ZN14MsgFileElement12setAttributeEPKcS1_, ptr @_ZNK14MsgFileElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14MsgFileElement21getNextMsgFileSiblingEv, ptr @_ZNK14MsgFileElement20getFirstCommentChildEv, ptr @_ZNK14MsgFileElement22getFirstNamespaceChildEv, ptr @_ZNK14MsgFileElement25getFirstPropertyDeclChildEv, ptr @_ZNK14MsgFileElement21getFirstPropertyChildEv, ptr @_ZNK14MsgFileElement22getFirstCplusplusChildEv, ptr @_ZNK14MsgFileElement23getFirstStructDeclChildEv, ptr @_ZNK14MsgFileElement22getFirstClassDeclChildEv, ptr @_ZNK14MsgFileElement24getFirstMessageDeclChildEv, ptr @_ZNK14MsgFileElement23getFirstPacketDeclChildEv, ptr @_ZNK14MsgFileElement21getFirstEnumDeclChildEv, ptr @_ZNK14MsgFileElement19getFirstStructChildEv, ptr @_ZNK14MsgFileElement18getFirstClassChildEv, ptr @_ZNK14MsgFileElement20getFirstMessageChildEv, ptr @_ZNK14MsgFileElement19getFirstPacketChildEv, ptr @_ZNK14MsgFileElement17getFirstEnumChildEv] }, align 8
@_ZTV16NamespaceElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI16NamespaceElement, ptr @_ZN16NamespaceElementD2Ev, ptr @_ZN16NamespaceElementD0Ev, ptr @_ZNK16NamespaceElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16NamespaceElement10getTagNameEv, ptr @_ZNK16NamespaceElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16NamespaceElement16getNumAttributesEv, ptr @_ZNK16NamespaceElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16NamespaceElement12getAttributeEi, ptr @_ZNK16NamespaceElement12getAttributeEPKc, ptr @_ZN16NamespaceElement12setAttributeEiPKc, ptr @_ZN16NamespaceElement12setAttributeEPKcS1_, ptr @_ZNK16NamespaceElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16NamespaceElement23getNextNamespaceSiblingEv, ptr @_ZNK16NamespaceElement20getFirstCommentChildEv] }, align 8
@_ZTV16CplusplusElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI16CplusplusElement, ptr @_ZN16CplusplusElementD2Ev, ptr @_ZN16CplusplusElementD0Ev, ptr @_ZNK16CplusplusElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16CplusplusElement10getTagNameEv, ptr @_ZNK16CplusplusElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16CplusplusElement16getNumAttributesEv, ptr @_ZNK16CplusplusElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16CplusplusElement12getAttributeEi, ptr @_ZNK16CplusplusElement12getAttributeEPKc, ptr @_ZN16CplusplusElement12setAttributeEiPKc, ptr @_ZN16CplusplusElement12setAttributeEPKcS1_, ptr @_ZNK16CplusplusElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16CplusplusElement23getNextCplusplusSiblingEv, ptr @_ZNK16CplusplusElement20getFirstCommentChildEv] }, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@_ZTV17StructDeclElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI17StructDeclElement, ptr @_ZN17StructDeclElementD2Ev, ptr @_ZN17StructDeclElementD0Ev, ptr @_ZNK17StructDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17StructDeclElement10getTagNameEv, ptr @_ZNK17StructDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17StructDeclElement16getNumAttributesEv, ptr @_ZNK17StructDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17StructDeclElement12getAttributeEi, ptr @_ZNK17StructDeclElement12getAttributeEPKc, ptr @_ZN17StructDeclElement12setAttributeEiPKc, ptr @_ZN17StructDeclElement12setAttributeEPKcS1_, ptr @_ZNK17StructDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17StructDeclElement24getNextStructDeclSiblingEv, ptr @_ZNK17StructDeclElement20getFirstCommentChildEv] }, align 8
@_ZTV16ClassDeclElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI16ClassDeclElement, ptr @_ZN16ClassDeclElementD2Ev, ptr @_ZN16ClassDeclElementD0Ev, ptr @_ZNK16ClassDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16ClassDeclElement10getTagNameEv, ptr @_ZNK16ClassDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16ClassDeclElement16getNumAttributesEv, ptr @_ZNK16ClassDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16ClassDeclElement12getAttributeEi, ptr @_ZNK16ClassDeclElement12getAttributeEPKc, ptr @_ZN16ClassDeclElement12setAttributeEiPKc, ptr @_ZN16ClassDeclElement12setAttributeEPKcS1_, ptr @_ZNK16ClassDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16ClassDeclElement23getNextClassDeclSiblingEv, ptr @_ZNK16ClassDeclElement20getFirstCommentChildEv] }, align 8
@.str.44 = private unnamed_addr constant [11 x i8] c"is-cobject\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"extends-name\00", align 1
@_ZTV18MessageDeclElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI18MessageDeclElement, ptr @_ZN18MessageDeclElementD2Ev, ptr @_ZN18MessageDeclElementD0Ev, ptr @_ZNK18MessageDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK18MessageDeclElement10getTagNameEv, ptr @_ZNK18MessageDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK18MessageDeclElement16getNumAttributesEv, ptr @_ZNK18MessageDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK18MessageDeclElement12getAttributeEi, ptr @_ZNK18MessageDeclElement12getAttributeEPKc, ptr @_ZN18MessageDeclElement12setAttributeEiPKc, ptr @_ZN18MessageDeclElement12setAttributeEPKcS1_, ptr @_ZNK18MessageDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK18MessageDeclElement25getNextMessageDeclSiblingEv, ptr @_ZNK18MessageDeclElement20getFirstCommentChildEv] }, align 8
@_ZTV17PacketDeclElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI17PacketDeclElement, ptr @_ZN17PacketDeclElementD2Ev, ptr @_ZN17PacketDeclElementD0Ev, ptr @_ZNK17PacketDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17PacketDeclElement10getTagNameEv, ptr @_ZNK17PacketDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17PacketDeclElement16getNumAttributesEv, ptr @_ZNK17PacketDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17PacketDeclElement12getAttributeEi, ptr @_ZNK17PacketDeclElement12getAttributeEPKc, ptr @_ZN17PacketDeclElement12setAttributeEiPKc, ptr @_ZN17PacketDeclElement12setAttributeEPKcS1_, ptr @_ZNK17PacketDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17PacketDeclElement24getNextPacketDeclSiblingEv, ptr @_ZNK17PacketDeclElement20getFirstCommentChildEv] }, align 8
@_ZTV15EnumDeclElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI15EnumDeclElement, ptr @_ZN15EnumDeclElementD2Ev, ptr @_ZN15EnumDeclElementD0Ev, ptr @_ZNK15EnumDeclElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK15EnumDeclElement10getTagNameEv, ptr @_ZNK15EnumDeclElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK15EnumDeclElement16getNumAttributesEv, ptr @_ZNK15EnumDeclElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK15EnumDeclElement12getAttributeEi, ptr @_ZNK15EnumDeclElement12getAttributeEPKc, ptr @_ZN15EnumDeclElement12setAttributeEiPKc, ptr @_ZN15EnumDeclElement12setAttributeEPKcS1_, ptr @_ZNK15EnumDeclElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK15EnumDeclElement22getNextEnumDeclSiblingEv, ptr @_ZNK15EnumDeclElement20getFirstCommentChildEv] }, align 8
@_ZTV11EnumElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI11EnumElement, ptr @_ZN11EnumElementD2Ev, ptr @_ZN11EnumElementD0Ev, ptr @_ZNK11EnumElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK11EnumElement10getTagNameEv, ptr @_ZNK11EnumElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK11EnumElement16getNumAttributesEv, ptr @_ZNK11EnumElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK11EnumElement12getAttributeEi, ptr @_ZNK11EnumElement12getAttributeEPKc, ptr @_ZN11EnumElement12setAttributeEiPKc, ptr @_ZN11EnumElement12setAttributeEPKcS1_, ptr @_ZNK11EnumElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK11EnumElement18getNextEnumSiblingEv, ptr @_ZNK11EnumElement20getFirstCommentChildEv, ptr @_ZNK11EnumElement23getFirstEnumFieldsChildEv] }, align 8
@.str.46 = private unnamed_addr constant [12 x i8] c"source-code\00", align 1
@_ZTV17EnumFieldsElement = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTI17EnumFieldsElement, ptr @_ZN10NEDElementD2Ev, ptr @_ZN17EnumFieldsElementD0Ev, ptr @_ZNK17EnumFieldsElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK17EnumFieldsElement10getTagNameEv, ptr @_ZNK17EnumFieldsElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK17EnumFieldsElement16getNumAttributesEv, ptr @_ZNK17EnumFieldsElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK17EnumFieldsElement12getAttributeEi, ptr @_ZNK17EnumFieldsElement12getAttributeEPKc, ptr @_ZN17EnumFieldsElement12setAttributeEiPKc, ptr @_ZN17EnumFieldsElement12setAttributeEPKcS1_, ptr @_ZNK17EnumFieldsElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK17EnumFieldsElement24getNextEnumFieldsSiblingEv, ptr @_ZNK17EnumFieldsElement20getFirstCommentChildEv, ptr @_ZNK17EnumFieldsElement22getFirstEnumFieldChildEv] }, align 8
@_ZTV16EnumFieldElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI16EnumFieldElement, ptr @_ZN16EnumFieldElementD2Ev, ptr @_ZN16EnumFieldElementD0Ev, ptr @_ZNK16EnumFieldElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK16EnumFieldElement10getTagNameEv, ptr @_ZNK16EnumFieldElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK16EnumFieldElement16getNumAttributesEv, ptr @_ZNK16EnumFieldElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK16EnumFieldElement12getAttributeEi, ptr @_ZNK16EnumFieldElement12getAttributeEPKc, ptr @_ZN16EnumFieldElement12setAttributeEiPKc, ptr @_ZN16EnumFieldElement12setAttributeEPKcS1_, ptr @_ZNK16EnumFieldElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK16EnumFieldElement23getNextEnumFieldSiblingEv, ptr @_ZNK16EnumFieldElement20getFirstCommentChildEv] }, align 8
@_ZTV14MessageElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI14MessageElement, ptr @_ZN14MessageElementD2Ev, ptr @_ZN14MessageElementD0Ev, ptr @_ZNK14MessageElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14MessageElement10getTagNameEv, ptr @_ZNK14MessageElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14MessageElement16getNumAttributesEv, ptr @_ZNK14MessageElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14MessageElement12getAttributeEi, ptr @_ZNK14MessageElement12getAttributeEPKc, ptr @_ZN14MessageElement12setAttributeEiPKc, ptr @_ZN14MessageElement12setAttributeEPKcS1_, ptr @_ZNK14MessageElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14MessageElement21getNextMessageSiblingEv, ptr @_ZNK14MessageElement20getFirstCommentChildEv, ptr @_ZNK14MessageElement21getFirstPropertyChildEv, ptr @_ZNK14MessageElement18getFirstFieldChildEv] }, align 8
@_ZTV13PacketElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI13PacketElement, ptr @_ZN13PacketElementD2Ev, ptr @_ZN13PacketElementD0Ev, ptr @_ZNK13PacketElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK13PacketElement10getTagNameEv, ptr @_ZNK13PacketElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK13PacketElement16getNumAttributesEv, ptr @_ZNK13PacketElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK13PacketElement12getAttributeEi, ptr @_ZNK13PacketElement12getAttributeEPKc, ptr @_ZN13PacketElement12setAttributeEiPKc, ptr @_ZN13PacketElement12setAttributeEPKcS1_, ptr @_ZNK13PacketElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK13PacketElement20getNextPacketSiblingEv, ptr @_ZNK13PacketElement20getFirstCommentChildEv, ptr @_ZNK13PacketElement21getFirstPropertyChildEv, ptr @_ZNK13PacketElement18getFirstFieldChildEv] }, align 8
@_ZTV12ClassElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI12ClassElement, ptr @_ZN12ClassElementD2Ev, ptr @_ZN12ClassElementD0Ev, ptr @_ZNK12ClassElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12ClassElement10getTagNameEv, ptr @_ZNK12ClassElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12ClassElement16getNumAttributesEv, ptr @_ZNK12ClassElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12ClassElement12getAttributeEi, ptr @_ZNK12ClassElement12getAttributeEPKc, ptr @_ZN12ClassElement12setAttributeEiPKc, ptr @_ZN12ClassElement12setAttributeEPKcS1_, ptr @_ZNK12ClassElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12ClassElement19getNextClassSiblingEv, ptr @_ZNK12ClassElement20getFirstCommentChildEv, ptr @_ZNK12ClassElement21getFirstPropertyChildEv, ptr @_ZNK12ClassElement18getFirstFieldChildEv] }, align 8
@_ZTV13StructElement = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI13StructElement, ptr @_ZN13StructElementD2Ev, ptr @_ZN13StructElementD0Ev, ptr @_ZNK13StructElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK13StructElement10getTagNameEv, ptr @_ZNK13StructElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK13StructElement16getNumAttributesEv, ptr @_ZNK13StructElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK13StructElement12getAttributeEi, ptr @_ZNK13StructElement12getAttributeEPKc, ptr @_ZN13StructElement12setAttributeEiPKc, ptr @_ZN13StructElement12setAttributeEPKcS1_, ptr @_ZNK13StructElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK13StructElement20getNextStructSiblingEv, ptr @_ZNK13StructElement20getFirstCommentChildEv, ptr @_ZNK13StructElement21getFirstPropertyChildEv, ptr @_ZNK13StructElement18getFirstFieldChildEv] }, align 8
@_ZTV12FieldElement = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI12FieldElement, ptr @_ZN12FieldElementD2Ev, ptr @_ZN12FieldElementD0Ev, ptr @_ZNK12FieldElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK12FieldElement10getTagNameEv, ptr @_ZNK12FieldElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK12FieldElement16getNumAttributesEv, ptr @_ZNK12FieldElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK12FieldElement12getAttributeEi, ptr @_ZNK12FieldElement12getAttributeEPKc, ptr @_ZN12FieldElement12setAttributeEiPKc, ptr @_ZN12FieldElement12setAttributeEPKcS1_, ptr @_ZNK12FieldElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK12FieldElement19getNextFieldSiblingEv, ptr @_ZNK12FieldElement20getFirstCommentChildEv] }, align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"is-abstract\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"is-readonly\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"enum-name\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"default-value\00", align 1
@_ZTV14UnknownElement = dso_local unnamed_addr constant { [39 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTI14UnknownElement, ptr @_ZN14UnknownElementD2Ev, ptr @_ZN14UnknownElementD0Ev, ptr @_ZNK14UnknownElement3dupEv, ptr @_ZNK10NEDElement7dupTreeEv, ptr @_ZNK14UnknownElement10getTagNameEv, ptr @_ZNK14UnknownElement10getTagCodeEv, ptr @_ZNK10NEDElement5getIdEv, ptr @_ZN10NEDElement5setIdEl, ptr @_ZNK10NEDElement17getSourceLocationEv, ptr @_ZN10NEDElement17setSourceLocationEPKc, ptr @_ZNK10NEDElement15getSourceRegionEv, ptr @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion, ptr @_ZN10NEDElement13applyDefaultsEv, ptr @_ZNK14UnknownElement16getNumAttributesEv, ptr @_ZNK14UnknownElement16getAttributeNameEi, ptr @_ZNK10NEDElement15lookupAttributeEPKc, ptr @_ZNK14UnknownElement12getAttributeEi, ptr @_ZNK14UnknownElement12getAttributeEPKc, ptr @_ZN14UnknownElement12setAttributeEiPKc, ptr @_ZN14UnknownElement12setAttributeEPKcS1_, ptr @_ZNK14UnknownElement19getAttributeDefaultEi, ptr @_ZNK10NEDElement19getAttributeDefaultEPKc, ptr @_ZNK10NEDElement9getParentEv, ptr @_ZNK10NEDElement13getFirstChildEv, ptr @_ZNK10NEDElement12getLastChildEv, ptr @_ZNK10NEDElement14getNextSiblingEv, ptr @_ZNK10NEDElement14getPrevSiblingEv, ptr @_ZN10NEDElement11appendChildEPS_, ptr @_ZN10NEDElement17insertChildBeforeEPS_S0_, ptr @_ZN10NEDElement11removeChildEPS_, ptr @_ZNK10NEDElement20getFirstChildWithTagEi, ptr @_ZNK10NEDElement21getNextSiblingWithTagEi, ptr @_ZNK10NEDElement14getNumChildrenEv, ptr @_ZNK10NEDElement21getNumChildrenWithTagEi, ptr @_ZN10NEDElement11setUserDataEP18NEDElementUserData, ptr @_ZNK10NEDElement11getUserDataEv, ptr @_ZNK14UnknownElement21getNextUnknownSiblingEv] }, align 8
@.str.52 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@_ZN17NEDElementFactory1fE = dso_local local_unnamed_addr global ptr null, align 8
@.str.53 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"ned-file\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"property-decl\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"interface-name\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"simple-module\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"module-interface\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"compound-module\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"channel-interface\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"property-key\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"gates\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"submodules\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"channel-spec\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"connection-group\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"msg-file\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"struct-decl\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"class-decl\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"message-decl\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"packet-decl\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"enum-decl\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"enum-fields\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"enum-field\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.102 = private unnamed_addr constant [55 x i8] c"unknown tag '%s', cannot create object to represent it\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.103 = private unnamed_addr constant [58 x i8] c"unknown tag code %d, cannot create object to represent it\00", align 1
@_ZTS12FilesElement = dso_local constant [15 x i8] c"12FilesElement\00", align 1
@_ZTI10NEDElement = external constant ptr
@_ZTI12FilesElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12FilesElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14NedFileElement = dso_local constant [17 x i8] c"14NedFileElement\00", align 1
@_ZTI14NedFileElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14NedFileElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14CommentElement = dso_local constant [17 x i8] c"14CommentElement\00", align 1
@_ZTI14CommentElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14CommentElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14PackageElement = dso_local constant [17 x i8] c"14PackageElement\00", align 1
@_ZTI14PackageElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14PackageElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS13ImportElement = dso_local constant [16 x i8] c"13ImportElement\00", align 1
@_ZTI13ImportElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13ImportElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS19PropertyDeclElement = dso_local constant [22 x i8] c"19PropertyDeclElement\00", align 1
@_ZTI19PropertyDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19PropertyDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14ExtendsElement = dso_local constant [17 x i8] c"14ExtendsElement\00", align 1
@_ZTI14ExtendsElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14ExtendsElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS20InterfaceNameElement = dso_local constant [23 x i8] c"20InterfaceNameElement\00", align 1
@_ZTI20InterfaceNameElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20InterfaceNameElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS19SimpleModuleElement = dso_local constant [22 x i8] c"19SimpleModuleElement\00", align 1
@_ZTI19SimpleModuleElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19SimpleModuleElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS22ModuleInterfaceElement = dso_local constant [25 x i8] c"22ModuleInterfaceElement\00", align 1
@_ZTI22ModuleInterfaceElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22ModuleInterfaceElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS21CompoundModuleElement = dso_local constant [24 x i8] c"21CompoundModuleElement\00", align 1
@_ZTI21CompoundModuleElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21CompoundModuleElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS23ChannelInterfaceElement = dso_local constant [26 x i8] c"23ChannelInterfaceElement\00", align 1
@_ZTI23ChannelInterfaceElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23ChannelInterfaceElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14ChannelElement = dso_local constant [17 x i8] c"14ChannelElement\00", align 1
@_ZTI14ChannelElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14ChannelElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17ParametersElement = dso_local constant [20 x i8] c"17ParametersElement\00", align 1
@_ZTI17ParametersElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17ParametersElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12ParamElement = dso_local constant [15 x i8] c"12ParamElement\00", align 1
@_ZTI12ParamElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12ParamElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14PatternElement = dso_local constant [17 x i8] c"14PatternElement\00", align 1
@_ZTI14PatternElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14PatternElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS15PropertyElement = dso_local constant [18 x i8] c"15PropertyElement\00", align 1
@_ZTI15PropertyElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15PropertyElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS18PropertyKeyElement = dso_local constant [21 x i8] c"18PropertyKeyElement\00", align 1
@_ZTI18PropertyKeyElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18PropertyKeyElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12GatesElement = dso_local constant [15 x i8] c"12GatesElement\00", align 1
@_ZTI12GatesElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12GatesElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS11GateElement = dso_local constant [14 x i8] c"11GateElement\00", align 1
@_ZTI11GateElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11GateElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12TypesElement = dso_local constant [15 x i8] c"12TypesElement\00", align 1
@_ZTI12TypesElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12TypesElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17SubmodulesElement = dso_local constant [20 x i8] c"17SubmodulesElement\00", align 1
@_ZTI17SubmodulesElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17SubmodulesElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16SubmoduleElement = dso_local constant [19 x i8] c"16SubmoduleElement\00", align 1
@_ZTI16SubmoduleElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16SubmoduleElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS18ConnectionsElement = dso_local constant [21 x i8] c"18ConnectionsElement\00", align 1
@_ZTI18ConnectionsElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18ConnectionsElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17ConnectionElement = dso_local constant [20 x i8] c"17ConnectionElement\00", align 1
@_ZTI17ConnectionElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17ConnectionElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS18ChannelSpecElement = dso_local constant [21 x i8] c"18ChannelSpecElement\00", align 1
@_ZTI18ChannelSpecElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18ChannelSpecElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS22ConnectionGroupElement = dso_local constant [25 x i8] c"22ConnectionGroupElement\00", align 1
@_ZTI22ConnectionGroupElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22ConnectionGroupElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS11LoopElement = dso_local constant [14 x i8] c"11LoopElement\00", align 1
@_ZTI11LoopElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11LoopElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16ConditionElement = dso_local constant [19 x i8] c"16ConditionElement\00", align 1
@_ZTI16ConditionElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16ConditionElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17ExpressionElement = dso_local constant [20 x i8] c"17ExpressionElement\00", align 1
@_ZTI17ExpressionElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17ExpressionElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS15OperatorElement = dso_local constant [18 x i8] c"15OperatorElement\00", align 1
@_ZTI15OperatorElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15OperatorElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS15FunctionElement = dso_local constant [18 x i8] c"15FunctionElement\00", align 1
@_ZTI15FunctionElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15FunctionElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12IdentElement = dso_local constant [15 x i8] c"12IdentElement\00", align 1
@_ZTI12IdentElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12IdentElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14LiteralElement = dso_local constant [17 x i8] c"14LiteralElement\00", align 1
@_ZTI14LiteralElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14LiteralElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14MsgFileElement = dso_local constant [17 x i8] c"14MsgFileElement\00", align 1
@_ZTI14MsgFileElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14MsgFileElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16NamespaceElement = dso_local constant [19 x i8] c"16NamespaceElement\00", align 1
@_ZTI16NamespaceElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16NamespaceElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16CplusplusElement = dso_local constant [19 x i8] c"16CplusplusElement\00", align 1
@_ZTI16CplusplusElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16CplusplusElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17StructDeclElement = dso_local constant [20 x i8] c"17StructDeclElement\00", align 1
@_ZTI17StructDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17StructDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16ClassDeclElement = dso_local constant [19 x i8] c"16ClassDeclElement\00", align 1
@_ZTI16ClassDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16ClassDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS18MessageDeclElement = dso_local constant [21 x i8] c"18MessageDeclElement\00", align 1
@_ZTI18MessageDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18MessageDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17PacketDeclElement = dso_local constant [20 x i8] c"17PacketDeclElement\00", align 1
@_ZTI17PacketDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17PacketDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS15EnumDeclElement = dso_local constant [18 x i8] c"15EnumDeclElement\00", align 1
@_ZTI15EnumDeclElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15EnumDeclElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS11EnumElement = dso_local constant [14 x i8] c"11EnumElement\00", align 1
@_ZTI11EnumElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11EnumElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS17EnumFieldsElement = dso_local constant [20 x i8] c"17EnumFieldsElement\00", align 1
@_ZTI17EnumFieldsElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17EnumFieldsElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS16EnumFieldElement = dso_local constant [19 x i8] c"16EnumFieldElement\00", align 1
@_ZTI16EnumFieldElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16EnumFieldElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14MessageElement = dso_local constant [17 x i8] c"14MessageElement\00", align 1
@_ZTI14MessageElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14MessageElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS13PacketElement = dso_local constant [16 x i8] c"13PacketElement\00", align 1
@_ZTI13PacketElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13PacketElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12ClassElement = dso_local constant [15 x i8] c"12ClassElement\00", align 1
@_ZTI12ClassElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12ClassElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS13StructElement = dso_local constant [16 x i8] c"13StructElement\00", align 1
@_ZTI13StructElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13StructElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS12FieldElement = dso_local constant [15 x i8] c"12FieldElement\00", align 1
@_ZTI12FieldElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12FieldElement, ptr @_ZTI10NEDElement }, align 8
@_ZTS14UnknownElement = dso_local constant [17 x i8] c"14UnknownElement\00", align 1
@_ZTI14UnknownElement = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14UnknownElement, ptr @_ZTI10NEDElement }, align 8
@_ZTV17NEDElementFactory = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI17NEDElementFactory, ptr @_ZN17NEDElementFactoryD2Ev, ptr @_ZN17NEDElementFactoryD0Ev, ptr @_ZN17NEDElementFactory20createElementWithTagEPKc, ptr @_ZN17NEDElementFactory20createElementWithTagEi] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17NEDElementFactory = dso_local constant [20 x i8] c"17NEDElementFactory\00", align 1
@_ZTI17NEDElementFactory = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17NEDElementFactory }, align 8
@.str.104 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"l2r\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"r2l\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"bidir\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@_ZTV12NEDException = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NEDException, ptr @_ZN12NEDExceptionD2Ev, ptr @_ZN12NEDExceptionD0Ev, ptr @_ZNK12NEDException4whatEv] }, comdat, align 8
@reltable._ZNK12ParamElement16getAttributeNameEi = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._ZNK12ParamElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable._ZNK12ParamElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK12ParamElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable._ZNK12ParamElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable._ZNK12ParamElement16getAttributeNameEi to i64)) to i32)], align 4
@switch.table._ZNK12ParamElement19getAttributeDefaultEi = private unnamed_addr constant [5 x ptr] [ptr @.str.5, ptr @.str.9, ptr null, ptr @.str.5, ptr @.str.9], align 8
@reltable._ZNK14PatternElement16getAttributeNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable._ZNK14PatternElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable._ZNK14PatternElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable._ZNK14PatternElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK15PropertyElement16getAttributeNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable._ZNK15PropertyElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK15PropertyElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable._ZNK15PropertyElement16getAttributeNameEi to i64)) to i32)], align 4
@switch.table._ZNK15PropertyElement19getAttributeDefaultEi = private unnamed_addr constant [3 x ptr] [ptr @.str.9, ptr null, ptr @.str.5], align 8
@reltable._ZNK11GateElement16getAttributeNameEi = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK11GateElement19getAttributeDefaultEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK11GateElement19getAttributeDefaultEi to i64)) to i32)], align 4
@reltable._ZNK16SubmoduleElement16getAttributeNameEi = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK17ConnectionElement16getAttributeNameEi = private unnamed_addr constant [13 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi to i64)) to i32)], align 4
@switch.table._ZNK17ConnectionElement19getAttributeDefaultEi = private unnamed_addr constant [13 x ptr] [ptr @.str.5, ptr @.str.5, ptr null, ptr @.str.9, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr null, ptr @.str.9, ptr @.str.5, ptr @.str.5, ptr null], align 8
@reltable._ZNK18ChannelSpecElement16getAttributeNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._ZNK18ChannelSpecElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable._ZNK18ChannelSpecElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable._ZNK18ChannelSpecElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK11LoopElement16getAttributeNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable._ZNK11LoopElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable._ZNK11LoopElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable._ZNK11LoopElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK14LiteralElement16getAttributeNameEi = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._ZNK14LiteralElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable._ZNK14LiteralElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable._ZNK14LiteralElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable._ZNK14LiteralElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK16ClassDeclElement16getAttributeNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK16ClassDeclElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable._ZNK16ClassDeclElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable._ZNK16ClassDeclElement16getAttributeNameEi to i64)) to i32)], align 4
@switch.table._ZNK13StructElement16getAttributeNameEi = private unnamed_addr constant [3 x ptr] [ptr @.str.6, ptr @.str.45, ptr @.str.46], align 8
@reltable._ZNK12FieldElement16getAttributeNameEi = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement16getAttributeNameEi to i64)) to i32)], align 4
@reltable._ZNK12FieldElement19getAttributeDefaultEi = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi to i64)) to i32)], align 4

@_ZN12FilesElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12FilesElementC2Ev
@_ZN12FilesElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12FilesElementC2EP10NEDElement
@_ZN14NedFileElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14NedFileElementC2Ev
@_ZN14NedFileElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14NedFileElementC2EP10NEDElement
@_ZN14CommentElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14CommentElementC2Ev
@_ZN14CommentElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14CommentElementC2EP10NEDElement
@_ZN14PackageElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PackageElementC2Ev
@_ZN14PackageElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14PackageElementC2EP10NEDElement
@_ZN13ImportElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ImportElementC2Ev
@_ZN13ImportElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13ImportElementC2EP10NEDElement
@_ZN19PropertyDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19PropertyDeclElementC2Ev
@_ZN19PropertyDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN19PropertyDeclElementC2EP10NEDElement
@_ZN14ExtendsElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14ExtendsElementC2Ev
@_ZN14ExtendsElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14ExtendsElementC2EP10NEDElement
@_ZN20InterfaceNameElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20InterfaceNameElementC2Ev
@_ZN20InterfaceNameElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN20InterfaceNameElementC2EP10NEDElement
@_ZN19SimpleModuleElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19SimpleModuleElementC2Ev
@_ZN19SimpleModuleElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN19SimpleModuleElementC2EP10NEDElement
@_ZN22ModuleInterfaceElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22ModuleInterfaceElementC2Ev
@_ZN22ModuleInterfaceElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN22ModuleInterfaceElementC2EP10NEDElement
@_ZN21CompoundModuleElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21CompoundModuleElementC2Ev
@_ZN21CompoundModuleElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN21CompoundModuleElementC2EP10NEDElement
@_ZN23ChannelInterfaceElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN23ChannelInterfaceElementC2Ev
@_ZN23ChannelInterfaceElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN23ChannelInterfaceElementC2EP10NEDElement
@_ZN14ChannelElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14ChannelElementC2Ev
@_ZN14ChannelElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14ChannelElementC2EP10NEDElement
@_ZN17ParametersElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17ParametersElementC2Ev
@_ZN17ParametersElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17ParametersElementC2EP10NEDElement
@_ZN12ParamElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12ParamElementC2Ev
@_ZN12ParamElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12ParamElementC2EP10NEDElement
@_ZN14PatternElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PatternElementC2Ev
@_ZN14PatternElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14PatternElementC2EP10NEDElement
@_ZN15PropertyElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15PropertyElementC2Ev
@_ZN15PropertyElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15PropertyElementC2EP10NEDElement
@_ZN18PropertyKeyElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18PropertyKeyElementC2Ev
@_ZN18PropertyKeyElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN18PropertyKeyElementC2EP10NEDElement
@_ZN12GatesElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12GatesElementC2Ev
@_ZN12GatesElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12GatesElementC2EP10NEDElement
@_ZN11GateElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11GateElementC2Ev
@_ZN11GateElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11GateElementC2EP10NEDElement
@_ZN12TypesElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12TypesElementC2Ev
@_ZN12TypesElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12TypesElementC2EP10NEDElement
@_ZN17SubmodulesElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17SubmodulesElementC2Ev
@_ZN17SubmodulesElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17SubmodulesElementC2EP10NEDElement
@_ZN16SubmoduleElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16SubmoduleElementC2Ev
@_ZN16SubmoduleElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16SubmoduleElementC2EP10NEDElement
@_ZN18ConnectionsElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18ConnectionsElementC2Ev
@_ZN18ConnectionsElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN18ConnectionsElementC2EP10NEDElement
@_ZN17ConnectionElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17ConnectionElementC2Ev
@_ZN17ConnectionElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17ConnectionElementC2EP10NEDElement
@_ZN18ChannelSpecElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18ChannelSpecElementC2Ev
@_ZN18ChannelSpecElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN18ChannelSpecElementC2EP10NEDElement
@_ZN22ConnectionGroupElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22ConnectionGroupElementC2Ev
@_ZN22ConnectionGroupElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN22ConnectionGroupElementC2EP10NEDElement
@_ZN11LoopElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11LoopElementC2Ev
@_ZN11LoopElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11LoopElementC2EP10NEDElement
@_ZN16ConditionElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16ConditionElementC2Ev
@_ZN16ConditionElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16ConditionElementC2EP10NEDElement
@_ZN17ExpressionElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17ExpressionElementC2Ev
@_ZN17ExpressionElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17ExpressionElementC2EP10NEDElement
@_ZN15OperatorElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15OperatorElementC2Ev
@_ZN15OperatorElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15OperatorElementC2EP10NEDElement
@_ZN15FunctionElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15FunctionElementC2Ev
@_ZN15FunctionElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15FunctionElementC2EP10NEDElement
@_ZN12IdentElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12IdentElementC2Ev
@_ZN12IdentElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12IdentElementC2EP10NEDElement
@_ZN14LiteralElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14LiteralElementC2Ev
@_ZN14LiteralElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14LiteralElementC2EP10NEDElement
@_ZN14MsgFileElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14MsgFileElementC2Ev
@_ZN14MsgFileElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14MsgFileElementC2EP10NEDElement
@_ZN16NamespaceElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16NamespaceElementC2Ev
@_ZN16NamespaceElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16NamespaceElementC2EP10NEDElement
@_ZN16CplusplusElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16CplusplusElementC2Ev
@_ZN16CplusplusElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16CplusplusElementC2EP10NEDElement
@_ZN17StructDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17StructDeclElementC2Ev
@_ZN17StructDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17StructDeclElementC2EP10NEDElement
@_ZN16ClassDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16ClassDeclElementC2Ev
@_ZN16ClassDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16ClassDeclElementC2EP10NEDElement
@_ZN18MessageDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18MessageDeclElementC2Ev
@_ZN18MessageDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN18MessageDeclElementC2EP10NEDElement
@_ZN17PacketDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17PacketDeclElementC2Ev
@_ZN17PacketDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17PacketDeclElementC2EP10NEDElement
@_ZN15EnumDeclElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15EnumDeclElementC2Ev
@_ZN15EnumDeclElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15EnumDeclElementC2EP10NEDElement
@_ZN11EnumElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11EnumElementC2Ev
@_ZN11EnumElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11EnumElementC2EP10NEDElement
@_ZN17EnumFieldsElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17EnumFieldsElementC2Ev
@_ZN17EnumFieldsElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN17EnumFieldsElementC2EP10NEDElement
@_ZN16EnumFieldElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16EnumFieldElementC2Ev
@_ZN16EnumFieldElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16EnumFieldElementC2EP10NEDElement
@_ZN14MessageElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14MessageElementC2Ev
@_ZN14MessageElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14MessageElementC2EP10NEDElement
@_ZN13PacketElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13PacketElementC2Ev
@_ZN13PacketElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13PacketElementC2EP10NEDElement
@_ZN12ClassElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12ClassElementC2Ev
@_ZN12ClassElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12ClassElementC2EP10NEDElement
@_ZN13StructElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13StructElementC2Ev
@_ZN13StructElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13StructElementC2EP10NEDElement
@_ZN12FieldElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12FieldElementC2Ev
@_ZN12FieldElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12FieldElementC2EP10NEDElement
@_ZN14UnknownElementC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14UnknownElementC2Ev
@_ZN14UnknownElementC1EP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN14UnknownElementC2EP10NEDElement

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FilesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV12FilesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: optsize
declare void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FilesElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV12FilesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12FilesElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12FilesElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12FilesElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FilesElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12FilesElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12FilesElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12FilesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FilesElement19getNextFilesSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FilesElement20getFirstNedFileChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 2) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FilesElement20getFirstMsgFileChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 35) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14NedFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !305 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTV14NedFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14NedFileElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTV14NedFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14NedFileElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !306 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14NedFileElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !307 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.1, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !307 {
  switch i32 %1, label %10 [
    i32 0, label %3
    i32 1, label %5
  ], !prof !308

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ null, %2 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14NedFileElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !305 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %6
  ], !prof !309

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14NedFileElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !310 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.2, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14NedFileElement3dupEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14NedFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.NedFileElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.NedFileElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement21getNextNedFileSiblingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 2) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement20getFirstPackageChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !311 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 4) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement19getFirstImportChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !311 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 5) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement25getFirstPropertyDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 6) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement25getFirstSimpleModuleChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 9) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement27getFirstCompoundModuleChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 11) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement28getFirstModuleInterfaceChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 10) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement20getFirstChannelChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 13) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14NedFileElement29getFirstChannelInterfaceChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 12) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14CommentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14CommentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14CommentElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14CommentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14CommentElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !313 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14CommentElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !314 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.4, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str.3, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14CommentElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !314 {
  switch i32 %1, label %10 [
    i32 0, label %3
    i32 1, label %5
  ], !prof !315

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ null, %2 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14CommentElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !312 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %6
  ], !prof !316

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14CommentElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !317 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.5, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14CommentElement3dupEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !318 {
  %2 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14CommentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.CommentElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.CommentElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14CommentElement21getNextCommentSiblingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PackageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14PackageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PackageElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14PackageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14PackageElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !319 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14PackageElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14PackageElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PackageElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK14PackageElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !319 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14PackageElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14PackageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PackageElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PackageElement21getNextPackageSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 4) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PackageElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ImportElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV13ImportElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ImportElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV13ImportElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK13ImportElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK13ImportElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.7, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13ImportElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ImportElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK13ImportElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK13ImportElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN13ImportElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ImportElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13ImportElement20getNextImportSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 5) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13ImportElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19PropertyDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV19PropertyDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %3, align 8, !tbaa !320
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19PropertyDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV19PropertyDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 8, !tbaa !320
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK19PropertyDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.8, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str.6, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %11 [
    i32 0, label %3
    i32 1, label %6
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !320, !range !331, !noundef !332
  %9 = icmp ne i8 %8, 0
  %10 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %9) #9
  br label %11

11:                                               ; preds = %2, %6, %3
  %12 = phi ptr [ %10, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19PropertyDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %7
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %11

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %9 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 2
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 8, !tbaa !320
  br label %11

11:                                               ; preds = %3, %7, %4
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.9, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK19PropertyDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #11
  invoke void @_ZN19PropertyDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PropertyDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !320, !range !331, !noundef !332
  %9 = getelementptr inbounds %class.PropertyDeclElement, ptr %2, i64 0, i32 2
  store i8 %8, ptr %9, align 8, !tbaa !320
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement26getNextPropertyDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 6) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement24getFirstPropertyKeyChildEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19PropertyDeclElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ExtendsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14ExtendsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ExtendsElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14ExtendsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14ExtendsElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !333 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14ExtendsElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !334 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !335
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14ExtendsElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !334 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !335

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ExtendsElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK14ExtendsElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !319 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14ExtendsElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ExtendsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ExtendsElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ExtendsElement21getNextExtendsSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ExtendsElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20InterfaceNameElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !336 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV20InterfaceNameElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20InterfaceNameElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV20InterfaceNameElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK20InterfaceNameElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !337 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK20InterfaceNameElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !339
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK20InterfaceNameElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !339

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20InterfaceNameElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK20InterfaceNameElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !336 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK20InterfaceNameElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN20InterfaceNameElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.InterfaceNameElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK20InterfaceNameElement27getNextInterfaceNameSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 8) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK20InterfaceNameElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19SimpleModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !318 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV19SimpleModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19SimpleModuleElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV19SimpleModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK19SimpleModuleElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !340 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !306 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !341
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !306 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !341

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19SimpleModuleElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK19SimpleModuleElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !318 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK19SimpleModuleElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN19SimpleModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.SimpleModuleElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement26getNextSimpleModuleSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 9) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement20getFirstExtendsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement26getFirstInterfaceNameChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 8) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK19SimpleModuleElement18getFirstGatesChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 19) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22ModuleInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV22ModuleInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22ModuleInterfaceElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV22ModuleInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK22ModuleInterfaceElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !337 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !342 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !343
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !342 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !343

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22ModuleInterfaceElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK22ModuleInterfaceElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !334 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK22ModuleInterfaceElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN22ModuleInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement29getNextModuleInterfaceSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 10) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement20getFirstExtendsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ModuleInterfaceElement18getFirstGatesChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 19) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21CompoundModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTV21CompoundModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21CompoundModuleElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTV21CompoundModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK21CompoundModuleElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !344 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !345 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !346
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !345 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !346

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21CompoundModuleElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK21CompoundModuleElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !338 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK21CompoundModuleElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN21CompoundModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.CompoundModuleElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement28getNextCompoundModuleSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 11) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement20getFirstExtendsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement26getFirstInterfaceNameChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 8) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement18getFirstGatesChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 19) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement18getFirstTypesChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 21) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement23getFirstSubmodulesChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 22) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21CompoundModuleElement24getFirstConnectionsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 24) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN23ChannelInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV23ChannelInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN23ChannelInterfaceElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV23ChannelInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK23ChannelInterfaceElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN23ChannelInterfaceElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK23ChannelInterfaceElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK23ChannelInterfaceElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN23ChannelInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement30getNextChannelInterfaceSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 12) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement20getFirstExtendsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK23ChannelInterfaceElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ChannelElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !342 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV14ChannelElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ChannelElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV14ChannelElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14ChannelElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !347 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14ChannelElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !339
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !339

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14ChannelElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK14ChannelElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !342 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14ChannelElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ChannelElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ChannelElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement21getNextChannelSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 13) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement20getFirstExtendsChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 7) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement26getFirstInterfaceNameChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 8) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14ChannelElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ParametersElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV17ParametersElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !349
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ParametersElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV17ParametersElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !349
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17ParametersElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !351 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ParametersElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !340 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.10, ptr null, !prof !352
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement12getAttributeEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(113) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !340 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %9, !prof !352

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !349, !range !331, !noundef !332
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %7) #9
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi ptr [ %8, %4 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ParametersElement12setAttributeEiPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(113) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !348 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9, !prof !353

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %7 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  %8 = zext i1 %6 to i8
  store i8 %8, ptr %7, align 8, !tbaa !349
  br label %9

9:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ParametersElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !348 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.9, ptr null, !prof !353
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17ParametersElement3dupEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  %2 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN17ParametersElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !349, !range !331, !noundef !332
  %6 = getelementptr inbounds %class.ParametersElement, ptr %2, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !349
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement24getNextParametersSiblingEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement18getFirstParamChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !318 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 15) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ParametersElement20getFirstPatternChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 16) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ParamElement7setTypeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(185) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !354 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL12partype_vals, ptr noundef nonnull @_ZL12partype_nums, i32 noundef 6) #9
  %3 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ParamElementC2Ev(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !357 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ParamElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !355
  %5 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 4, !tbaa !358
  %6 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  store i8 0, ptr %6, align 8, !tbaa !359
  %7 = load ptr, ptr %0, align 8, !tbaa !302
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret void

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ParamElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(185) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ParamElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !358
  %7 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  store i8 0, ptr %7, align 8, !tbaa !359
  %8 = load ptr, ptr %0, align 8, !tbaa !302
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %11 unwind label %12

11:                                               ; preds = %2
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12ParamElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !360 {
  ret i32 5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12ParamElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !361 {
  %3 = icmp ult i32 %1, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK12ParamElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ParamElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(185) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !362 {
  switch i32 %1, label %23 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %12
    i32 3, label %15
    i32 4, label %18
  ], !prof !363

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !355
  %6 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %5, ptr noundef nonnull @_ZL12partype_vals, ptr noundef nonnull @_ZL12partype_nums, i32 noundef 6) #9
  br label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !358, !range !331, !noundef !332
  %10 = icmp ne i8 %9, 0
  %11 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %10) #9
  br label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  %14 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  br label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  %17 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  br label %23

18:                                               ; preds = %2
  %19 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  %20 = load i8, ptr %19, align 8, !tbaa !359, !range !331, !noundef !332
  %21 = icmp ne i8 %20, 0
  %22 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %21) #9
  br label %23

23:                                               ; preds = %2, %18, %15, %12, %7, %3
  %24 = phi ptr [ %22, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %7 ], [ %6, %3 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ParamElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(185) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !364 {
  switch i32 %1, label %21 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %11
    i32 3, label %14
    i32 4, label %17
  ], !prof !365

4:                                                ; preds = %3
  %5 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL12partype_vals, ptr noundef nonnull @_ZL12partype_nums, i32 noundef 6) #9
  %6 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !355
  br label %21

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %9 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 4, !tbaa !358
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %2) #9
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  %16 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %2) #9
  br label %21

17:                                               ; preds = %3
  %18 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %19 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  %20 = zext i1 %18 to i8
  store i8 %20, ptr %19, align 8, !tbaa !359
  br label %21

21:                                               ; preds = %3, %17, %14, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12ParamElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !366 {
  %3 = icmp ult i32 %1, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [5 x ptr], ptr @switch.table._ZNK12ParamElement19getAttributeDefaultEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12ParamElement3dupEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !342 {
  %2 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #11
  invoke void @_ZN12ParamElementC2Ev(ptr noundef nonnull align 8 dereferenceable(185) %2) #9
          to label %3 unwind label %19

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !355
  %6 = getelementptr inbounds %class.ParamElement, ptr %2, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !358, !range !331, !noundef !332
  %9 = getelementptr inbounds %class.ParamElement, ptr %2, i64 0, i32 2
  store i8 %8, ptr %9, align 4, !tbaa !358
  %10 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.ParamElement, ptr %2, i64 0, i32 4
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  %13 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %class.ParamElement, ptr %2, i64 0, i32 5
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13) #9
  %16 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 8, !tbaa !359, !range !331, !noundef !332
  %18 = getelementptr inbounds %class.ParamElement, ptr %2, i64 0, i32 6
  store i8 %17, ptr %18, align 8, !tbaa !359
  ret ptr %2

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ParamElement19getNextParamSiblingEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 !prof !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 15) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ParamElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ParamElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 !prof !367 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ParamElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternElementC2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14PatternElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %4, align 8, !tbaa !368
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14PatternElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 8, !tbaa !368
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14PatternElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14PatternElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK14PatternElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PatternElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(177) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %14 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !368, !range !331, !noundef !332
  %12 = icmp ne i8 %11, 0
  %13 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %12) #9
  br label %14

14:                                               ; preds = %2, %9, %6, %3
  %15 = phi ptr [ %13, %9 ], [ %8, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(177) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %14 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %2) #9
  br label %14

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %12 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 3
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 8, !tbaa !368
  br label %14

14:                                               ; preds = %3, %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14PatternElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.5, ptr null
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, ptr @.str.9, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14PatternElement3dupEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN14PatternElementC2Ev(ptr noundef nonnull align 8 dereferenceable(177) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PatternElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.PatternElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !368, !range !331, !noundef !332
  %12 = getelementptr inbounds %class.PatternElement, ptr %2, i64 0, i32 3
  store i8 %11, ptr %12, align 8, !tbaa !368
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PatternElement21getNextPatternSiblingEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 16) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PatternElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PatternElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14PatternElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15PropertyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !370 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV15PropertyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !371
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15PropertyElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV15PropertyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !371
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK15PropertyElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !373 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK15PropertyElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !374 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK15PropertyElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15PropertyElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !375 {
  switch i32 %1, label %14 [
    i32 0, label %3
    i32 1, label %8
    i32 2, label %11
  ], !prof !376

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !371, !range !331, !noundef !332
  %6 = icmp ne i8 %5, 0
  %7 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %6) #9
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  %10 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  %13 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  br label %14

14:                                               ; preds = %2, %11, %8, %3
  %15 = phi ptr [ %13, %11 ], [ %10, %8 ], [ %7, %3 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15PropertyElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !377 {
  switch i32 %1, label %14 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %11
  ], !prof !378

4:                                                ; preds = %3
  %5 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %6 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  %7 = zext i1 %5 to i8
  store i8 %7, ptr %6, align 8, !tbaa !371
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %2) #9
  br label %14

14:                                               ; preds = %3, %11, %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK15PropertyElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !379 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK15PropertyElement19getAttributeDefaultEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK15PropertyElement3dupEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  %2 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN15PropertyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !371, !range !331, !noundef !332
  %6 = getelementptr inbounds %class.PropertyElement, ptr %2, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !371
  %7 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.PropertyElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.PropertyElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15PropertyElement22getNextPropertySiblingEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15PropertyElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15PropertyElement24getFirstPropertyKeyChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18PropertyKeyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !380 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV18PropertyKeyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18PropertyKeyElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV18PropertyKeyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK18PropertyKeyElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !381 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !339
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !339

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18PropertyKeyElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !380 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8, !prof !382

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !380 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.5, ptr null, !prof !382
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK18PropertyKeyElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18PropertyKeyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PropertyKeyElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement25getNextPropertyKeySiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18PropertyKeyElement20getFirstLiteralChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12GatesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !383 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV12GatesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12GatesElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV12GatesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12GatesElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !383 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12GatesElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12GatesElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12GatesElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12GatesElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12GatesElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12GatesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12GatesElement19getNextGatesSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 19) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12GatesElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12GatesElement17getFirstGateChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !338 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 20) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11GateElement7setTypeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !384 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL13gatetype_vals, ptr noundef nonnull @_ZL13gatetype_nums, i32 noundef 4) #9
  %3 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11GateElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV11GateElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !385
  %5 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 4, !tbaa !387
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11GateElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV11GateElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !385
  %6 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !387
  %7 = load ptr, ptr %0, align 8, !tbaa !302
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11GateElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !388 {
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11GateElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !389 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK11GateElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11GateElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !390 {
  switch i32 %1, label %18 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %10
    i32 3, label %15
  ], !prof !391

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !385
  %9 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %8, ptr noundef nonnull @_ZL13gatetype_vals, ptr noundef nonnull @_ZL13gatetype_nums, i32 noundef 4) #9
  br label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !387, !range !331, !noundef !332
  %13 = icmp ne i8 %12, 0
  %14 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %13) #9
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  %17 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  br label %18

18:                                               ; preds = %2, %15, %10, %6, %3
  %19 = phi ptr [ %17, %15 ], [ %14, %10 ], [ %9, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11GateElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !392 {
  switch i32 %1, label %17 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %14
  ], !prof !393

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %17

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL13gatetype_vals, ptr noundef nonnull @_ZL13gatetype_nums, i32 noundef 4) #9
  %9 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !385
  br label %17

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %12 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 4, !tbaa !387
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  %16 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %2) #9
  br label %17

17:                                               ; preds = %3, %14, %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11GateElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !394 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK11GateElement19getAttributeDefaultEi, i64 %7)
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ null, %2 ], [ %8, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK11GateElement3dupEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN11GateElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #9
          to label %3 unwind label %16

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.GateElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !385
  %9 = getelementptr inbounds %class.GateElement, ptr %2, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !385
  %10 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 4, !tbaa !387, !range !331, !noundef !332
  %12 = getelementptr inbounds %class.GateElement, ptr %2, i64 0, i32 3
  store i8 %11, ptr %12, align 4, !tbaa !387
  %13 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %class.GateElement, ptr %2, i64 0, i32 4
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13) #9
  ret ptr %2

16:                                               ; preds = %1
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11GateElement18getNextGateSiblingEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !338 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 20) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11GateElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11GateElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !395 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11GateElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12TypesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [45 x ptr] }, ptr @_ZTV12TypesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12TypesElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [45 x ptr] }, ptr @_ZTV12TypesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12TypesElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12TypesElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12TypesElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12TypesElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12TypesElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12TypesElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12TypesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement19getNextTypesSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 21) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement20getFirstChannelChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 13) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement29getFirstChannelInterfaceChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 12) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement25getFirstSimpleModuleChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 9) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement27getFirstCompoundModuleChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 11) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12TypesElement28getFirstModuleInterfaceChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 10) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17SubmodulesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV17SubmodulesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17SubmodulesElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV17SubmodulesElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17SubmodulesElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !338 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17SubmodulesElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17SubmodulesElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN17SubmodulesElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17SubmodulesElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17SubmodulesElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17SubmodulesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17SubmodulesElement24getNextSubmodulesSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 22) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17SubmodulesElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17SubmodulesElement22getFirstSubmoduleChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !396 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 23) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16SubmoduleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV16SubmoduleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !302
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret void

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16SubmoduleElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV16SubmoduleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = load ptr, ptr %0, align 8, !tbaa !302
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %11 unwind label %12

11:                                               ; preds = %2
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16SubmoduleElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !375 {
  ret i32 5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !397 {
  %3 = icmp ult i32 %1, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK16SubmoduleElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !398 {
  switch i32 %1, label %16 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
  ], !prof !399

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  br label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %3, %5, %7, %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %15 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ null, %2 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16SubmoduleElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !398 {
  switch i32 %1, label %17 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
  ], !prof !400

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  br label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  br label %14

14:                                               ; preds = %4, %6, %8, %10, %12
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %2) #9
  br label %17

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !375 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16SubmoduleElement3dupEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #11
  invoke void @_ZN16SubmoduleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(272) %2) #9
          to label %3 unwind label %19

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.SubmoduleElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.SubmoduleElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.SubmoduleElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  %13 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %class.SubmoduleElement, ptr %2, i64 0, i32 4
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13) #9
  %16 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %class.SubmoduleElement, ptr %2, i64 0, i32 5
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %16) #9
  ret ptr %2

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement23getNextSubmoduleSiblingEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 !prof !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 23) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16SubmoduleElement18getFirstGatesChildEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 19) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ConnectionsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV18ConnectionsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !402
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ConnectionsElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV18ConnectionsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !402
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK18ConnectionsElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !404 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.21, ptr null, !prof !339
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement12getAttributeEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(113) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %9, !prof !339

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !402, !range !331, !noundef !332
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %7) #9
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi ptr [ %8, %4 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ConnectionsElement12setAttributeEiPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(113) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !338 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9, !prof !339

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %7 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  %8 = zext i1 %6 to i8
  store i8 %8, ptr %7, align 8, !tbaa !402
  br label %9

9:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !338 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.9, ptr null, !prof !339
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK18ConnectionsElement3dupEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN18ConnectionsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !402, !range !331, !noundef !332
  %6 = getelementptr inbounds %class.ConnectionsElement, ptr %2, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !402
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement25getNextConnectionsSiblingEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 24) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement23getFirstConnectionChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 25) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ConnectionsElement28getFirstConnectionGroupChildEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 27) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElement14setSrcGateSubgEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !405 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !406
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElement15setDestGateSubgEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !405 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  store i32 %1, ptr %3, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElement17setArrowDirectionEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !405 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL13arrowdir_vals, ptr noundef nonnull @_ZL13arrowdir_nums, i32 noundef 3) #9
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  store i32 %1, ptr %3, align 4, !tbaa !409
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ConnectionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %9 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %10 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  store i8 0, ptr %10, align 8, !tbaa !410
  %11 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  store i32 0, ptr %11, align 8, !tbaa !406
  %12 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  store i8 0, ptr %12, align 8, !tbaa !411
  %13 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !408
  %14 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  store i32 0, ptr %14, align 4, !tbaa !409
  %15 = load ptr, ptr %0, align 8, !tbaa !302
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %18 unwind label %19

18:                                               ; preds = %1
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ConnectionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %9 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %10 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  %11 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  store i8 0, ptr %11, align 8, !tbaa !410
  %12 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !406
  %13 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  store i8 0, ptr %13, align 8, !tbaa !411
  %14 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  store i32 0, ptr %14, align 8, !tbaa !408
  %15 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  store i32 0, ptr %15, align 4, !tbaa !409
  %16 = load ptr, ptr %0, align 8, !tbaa !302
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %19 unwind label %20

19:                                               ; preds = %2
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17ConnectionElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !412 {
  ret i32 13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !413 {
  %3 = icmp ult i32 %1, 13
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK17ConnectionElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !414 {
  switch i32 %1, label %49 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
    i32 4, label %17
    i32 5, label %20
    i32 6, label %24
    i32 7, label %27
    i32 8, label %30
    i32 9, label %33
    i32 10, label %38
    i32 11, label %41
    i32 12, label %45
  ], !prof !415

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %49

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  br label %49

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %49

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 8, !tbaa !410, !range !331, !noundef !332
  %15 = icmp ne i8 %14, 0
  %16 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %15) #9
  br label %49

17:                                               ; preds = %2
  %18 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  %19 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #10
  br label %49

20:                                               ; preds = %2
  %21 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !406
  %23 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %22, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  br label %49

24:                                               ; preds = %2
  %25 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  %26 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #10
  br label %49

27:                                               ; preds = %2
  %28 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  %29 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #10
  br label %49

30:                                               ; preds = %2
  %31 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  %32 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #10
  br label %49

33:                                               ; preds = %2
  %34 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  %35 = load i8, ptr %34, align 8, !tbaa !411, !range !331, !noundef !332
  %36 = icmp ne i8 %35, 0
  %37 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %36) #9
  br label %49

38:                                               ; preds = %2
  %39 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  %40 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %39) #10
  br label %49

41:                                               ; preds = %2
  %42 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  %43 = load i32, ptr %42, align 8, !tbaa !408
  %44 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %43, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  br label %49

45:                                               ; preds = %2
  %46 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  %47 = load i32, ptr %46, align 4, !tbaa !409
  %48 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %47, ptr noundef nonnull @_ZL13arrowdir_vals, ptr noundef nonnull @_ZL13arrowdir_nums, i32 noundef 3) #9
  br label %49

49:                                               ; preds = %2, %45, %41, %38, %33, %30, %27, %24, %20, %17, %12, %9, %6, %3
  %50 = phi ptr [ %48, %45 ], [ %44, %41 ], [ %40, %38 ], [ %37, %33 ], [ %32, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %20 ], [ %19, %17 ], [ %16, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %50
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ConnectionElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !416 {
  switch i32 %1, label %45 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %17
    i32 5, label %20
    i32 6, label %23
    i32 7, label %26
    i32 8, label %29
    i32 9, label %32
    i32 10, label %36
    i32 11, label %39
    i32 12, label %42
  ], !prof !417

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %2) #9
  br label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %45

13:                                               ; preds = %3
  %14 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %15 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 8, !tbaa !410
  br label %45

17:                                               ; preds = %3
  %18 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %2) #9
  br label %45

20:                                               ; preds = %3
  %21 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  %22 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  store i32 %21, ptr %22, align 8, !tbaa !406
  br label %45

23:                                               ; preds = %3
  %24 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %2) #9
  br label %45

26:                                               ; preds = %3
  %27 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef %2) #9
  br label %45

29:                                               ; preds = %3
  %30 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %2) #9
  br label %45

32:                                               ; preds = %3
  %33 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %34 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  %35 = zext i1 %33 to i8
  store i8 %35, ptr %34, align 8, !tbaa !411
  br label %45

36:                                               ; preds = %3
  %37 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  %38 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef %2) #9
  br label %45

39:                                               ; preds = %3
  %40 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL12subgate_vals, ptr noundef nonnull @_ZL12subgate_nums, i32 noundef 3) #9
  %41 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  store i32 %40, ptr %41, align 8, !tbaa !408
  br label %45

42:                                               ; preds = %3
  %43 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL13arrowdir_vals, ptr noundef nonnull @_ZL13arrowdir_nums, i32 noundef 3) #9
  %44 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 13
  store i32 %43, ptr %44, align 4, !tbaa !409
  br label %45

45:                                               ; preds = %3, %42, %39, %36, %32, %29, %26, %23, %20, %17, %13, %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !418 {
  %3 = icmp ult i32 %1, 13
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [13 x ptr], ptr @switch.table._ZNK17ConnectionElement19getAttributeDefaultEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17ConnectionElement3dupEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #11
  invoke void @_ZN17ConnectionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(400) %2) #9
          to label %3 unwind label %40

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  %13 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 8, !tbaa !410, !range !331, !noundef !332
  %15 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 4
  store i8 %14, ptr %15, align 8, !tbaa !410
  %16 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 5
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %16) #9
  %19 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !406
  %21 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 6
  store i32 %20, ptr %21, align 8, !tbaa !406
  %22 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 7
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %22) #9
  %25 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 8
  %27 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %25) #9
  %28 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 9
  %30 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %28) #9
  %31 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  %32 = load i8, ptr %31, align 8, !tbaa !411, !range !331, !noundef !332
  %33 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 10
  store i8 %32, ptr %33, align 8, !tbaa !411
  %34 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  %35 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 11
  %36 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %34) #9
  %37 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 12
  %38 = getelementptr inbounds %class.ConnectionElement, ptr %2, i64 0, i32 12
  %39 = load <2 x i32>, ptr %37, align 8, !tbaa !419
  store <2 x i32> %39, ptr %38, align 8, !tbaa !419
  ret ptr %2

40:                                               ; preds = %1
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement24getNextConnectionSiblingEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !420 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 25) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement24getFirstChannelSpecChildEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !421 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 26) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement17getFirstLoopChildEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 28) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ConnectionElement22getFirstConditionChildEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 29) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ChannelSpecElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV18ChannelSpecElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ChannelSpecElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV18ChannelSpecElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK18ChannelSpecElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !423 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !423 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK18ChannelSpecElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !424 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ], !prof !425

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18ChannelSpecElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !423 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !prof !426

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !423 {
  %3 = icmp ult i32 %1, 3
  %4 = select i1 %3, ptr @.str.5, ptr null, !prof !427
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK18ChannelSpecElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN18ChannelSpecElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ChannelSpecElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.ChannelSpecElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.ChannelSpecElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement25getNextChannelSpecSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 26) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18ChannelSpecElement23getFirstParametersChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22ConnectionGroupElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !428 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV22ConnectionGroupElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22ConnectionGroupElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV22ConnectionGroupElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK22ConnectionGroupElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !428 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK22ConnectionGroupElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK22ConnectionGroupElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN22ConnectionGroupElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK22ConnectionGroupElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK22ConnectionGroupElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN22ConnectionGroupElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ConnectionGroupElement29getNextConnectionGroupSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 27) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ConnectionGroupElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ConnectionGroupElement17getFirstLoopChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 28) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ConnectionGroupElement22getFirstConditionChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 29) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22ConnectionGroupElement23getFirstConnectionChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !429 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 25) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11LoopElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !430 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11LoopElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11LoopElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11LoopElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11LoopElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !351 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11LoopElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !431 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK11LoopElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11LoopElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !431 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ], !prof !432

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11LoopElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !431 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !prof !433

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11LoopElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !351 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK11LoopElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11LoopElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.LoopElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.LoopElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.LoopElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11LoopElement18getNextLoopSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 28) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11LoopElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11LoopElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ConditionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV16ConditionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ConditionElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV16ConditionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16ConditionElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16ConditionElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.38, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK16ConditionElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ConditionElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16ConditionElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.5, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16ConditionElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16ConditionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ConditionElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ConditionElement23getNextConditionSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 29) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ConditionElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ConditionElement23getFirstExpressionChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ExpressionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !434 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ExpressionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ExpressionElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ExpressionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17ExpressionElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !435 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !436 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.39, ptr null, !prof !437
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !436 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !437

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17ExpressionElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !434 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8, !prof !438

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !434 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.5, ptr null, !prof !438
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17ExpressionElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17ExpressionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ExpressionElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement24getNextExpressionSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !347 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 30) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement21getFirstOperatorChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 31) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement21getFirstFunctionChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 32) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement18getFirstIdentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 33) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17ExpressionElement20getFirstLiteralChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15OperatorElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !439 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15OperatorElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15OperatorElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15OperatorElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK15OperatorElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !436 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK15OperatorElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !439 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !440
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !439 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !440

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15OperatorElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK15OperatorElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !439 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK15OperatorElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15OperatorElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.OperatorElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement22getNextOperatorSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 31) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement21getFirstOperatorChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 31) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement21getFirstFunctionChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 32) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement18getFirstIdentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 33) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15OperatorElement20getFirstLiteralChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15FunctionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !333 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15FunctionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15FunctionElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15FunctionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK15FunctionElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !404 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK15FunctionElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !337 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null, !prof !441
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !337 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !441

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15FunctionElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK15FunctionElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !333 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK15FunctionElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15FunctionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FunctionElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement22getNextFunctionSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 32) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement21getFirstOperatorChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 31) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement21getFirstFunctionChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 32) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement18getFirstIdentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !333 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 33) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15FunctionElement20getFirstLiteralChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12IdentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !442 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV12IdentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12IdentElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV12IdentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12IdentElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !443 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12IdentElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !444 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.6, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str.40, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !445 {
  switch i32 %1, label %10 [
    i32 0, label %3
    i32 1, label %5
  ], !prof !446

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ null, %2 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12IdentElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !442 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %6
  ], !prof !447

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12IdentElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !445 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.5, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12IdentElement3dupEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN12IdentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.IdentElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.IdentElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement19getNextIdentSiblingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 33) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement21getFirstOperatorChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 31) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement21getFirstFunctionChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 32) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement18getFirstIdentChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 33) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12IdentElement20getFirstLiteralChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14LiteralElement7setTypeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !448 {
  tail call void @_ZN10NEDElement12validateEnumEiPPKcPii(i32 noundef %1, ptr noundef nonnull @_ZL12littype_vals, ptr noundef nonnull @_ZL12littype_nums, i32 noundef 5) #9
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !449
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14LiteralElementC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !451 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14LiteralElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !449
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14LiteralElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14LiteralElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !449
  %7 = load ptr, ptr %0, align 8, !tbaa !302
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14LiteralElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !452 {
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14LiteralElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !453 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK14LiteralElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14LiteralElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !453 {
  switch i32 %1, label %16 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
  ], !prof !454

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !449
  %6 = tail call noundef ptr @_ZN10NEDElement12enumToStringEiPPKcPii(i32 noundef %5, ptr noundef nonnull @_ZL12littype_vals, ptr noundef nonnull @_ZL12littype_nums, i32 noundef 5) #9
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %12 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %15 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  br label %16

16:                                               ; preds = %2, %13, %10, %7, %3
  %17 = phi ptr [ %15, %13 ], [ %12, %10 ], [ %9, %7 ], [ %6, %3 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14LiteralElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !455 {
  switch i32 %1, label %16 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
  ], !prof !456

4:                                                ; preds = %3
  %5 = tail call noundef i32 @_ZN10NEDElement12stringToEnumEPKcPS1_Pii(ptr noundef %2, ptr noundef nonnull @_ZL12littype_vals, ptr noundef nonnull @_ZL12littype_nums, i32 noundef 5) #9
  %6 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !449
  br label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %2) #9
  br label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %2) #9
  br label %16

16:                                               ; preds = %3, %13, %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14LiteralElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !457 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 3
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14LiteralElement3dupEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !318 {
  %2 = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #11
  invoke void @_ZN14LiteralElementC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %2) #9
          to label %3 unwind label %16

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !449
  %6 = getelementptr inbounds %class.LiteralElement, ptr %2, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !449
  %7 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.LiteralElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.LiteralElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  %13 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %class.LiteralElement, ptr %2, i64 0, i32 4
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13) #9
  ret ptr %2

16:                                               ; preds = %1
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14LiteralElement21getNextLiteralSiblingEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 34) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14LiteralElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MsgFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTV14MsgFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MsgFileElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTV14MsgFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14MsgFileElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.1, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %10 [
    i32 0, label %3
    i32 1, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ null, %2 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MsgFileElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.2, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str.5, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14MsgFileElement3dupEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14MsgFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.MsgFileElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.MsgFileElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement21getNextMsgFileSiblingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 35) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement22getFirstNamespaceChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 36) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement25getFirstPropertyDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 6) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement22getFirstCplusplusChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 37) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement23getFirstStructDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 38) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement22getFirstClassDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 39) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement24getFirstMessageDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 40) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement23getFirstPacketDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 41) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement21getFirstEnumDeclChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 42) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement19getFirstStructChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 49) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement18getFirstClassChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 48) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement20getFirstMessageChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 46) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement19getFirstPacketChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 47) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MsgFileElement17getFirstEnumChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 43) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16NamespaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16NamespaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16NamespaceElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16NamespaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16NamespaceElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16NamespaceElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK16NamespaceElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16NamespaceElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK16NamespaceElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16NamespaceElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16NamespaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.NamespaceElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16NamespaceElement23getNextNamespaceSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 36) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16NamespaceElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16CplusplusElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16CplusplusElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16CplusplusElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16CplusplusElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16CplusplusElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16CplusplusElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.43, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK16CplusplusElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16CplusplusElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK16CplusplusElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16CplusplusElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16CplusplusElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.CplusplusElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16CplusplusElement23getNextCplusplusSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 37) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16CplusplusElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17StructDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17StructDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17StructDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17StructDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17StructDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17StructDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK17StructDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17StructDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17StructDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17StructDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17StructDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.StructDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17StructDeclElement24getNextStructDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 38) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17StructDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ClassDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16ClassDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 8, !tbaa !458
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ClassDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16ClassDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 8, !tbaa !458
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16ClassDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16ClassDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK16ClassDeclElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ClassDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %14 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %11
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !458, !range !331, !noundef !332
  %9 = icmp ne i8 %8, 0
  %10 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %9) #9
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  %13 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  br label %14

14:                                               ; preds = %2, %11, %6, %3
  %15 = phi ptr [ %13, %11 ], [ %10, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16ClassDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %14 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %11
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %14

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %9 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 8, !tbaa !458
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %2) #9
  br label %14

14:                                               ; preds = %3, %11, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16ClassDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.9, ptr null
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, ptr @.str.5, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16ClassDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN16ClassDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ClassDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !458, !range !331, !noundef !332
  %9 = getelementptr inbounds %class.ClassDeclElement, ptr %2, i64 0, i32 2
  store i8 %8, ptr %9, align 8, !tbaa !458
  %10 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.ClassDeclElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ClassDeclElement23getNextClassDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 39) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16ClassDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18MessageDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV18MessageDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18MessageDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV18MessageDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK18MessageDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK18MessageDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK18MessageDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18MessageDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK18MessageDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK18MessageDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18MessageDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.MessageDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18MessageDeclElement25getNextMessageDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 40) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK18MessageDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17PacketDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17PacketDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17PacketDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17PacketDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17PacketDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK17PacketDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK17PacketDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17PacketDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17PacketDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17PacketDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17PacketDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PacketDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17PacketDeclElement24getNextPacketDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 41) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17PacketDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15EnumDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV15EnumDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15EnumDeclElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV15EnumDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK15EnumDeclElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK15EnumDeclElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.6, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK15EnumDeclElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15EnumDeclElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK15EnumDeclElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK15EnumDeclElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15EnumDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.EnumDeclElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15EnumDeclElement22getNextEnumDeclSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 42) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK15EnumDeclElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11EnumElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11EnumElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11EnumElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11EnumElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11EnumElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11EnumElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13StructElement16getAttributeNameEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11EnumElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11EnumElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK11EnumElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK11EnumElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11EnumElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.EnumElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.EnumElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.EnumElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11EnumElement18getNextEnumSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 43) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11EnumElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11EnumElement23getFirstEnumFieldsChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 44) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17EnumFieldsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV17EnumFieldsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17EnumFieldsElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV17EnumFieldsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  invoke void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK17EnumFieldsElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17EnumFieldsElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17EnumFieldsElement12getAttributeEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN17EnumFieldsElement12setAttributeEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK17EnumFieldsElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !301 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK17EnumFieldsElement3dupEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17EnumFieldsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17EnumFieldsElement24getNextEnumFieldsSiblingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 44) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17EnumFieldsElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK17EnumFieldsElement22getFirstEnumFieldChildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 45) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16EnumFieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16EnumFieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16EnumFieldElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16EnumFieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK16EnumFieldElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16EnumFieldElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.13, ptr null
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr @.str.6, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK16EnumFieldElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %10 [
    i32 0, label %3
    i32 1, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ null, %2 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16EnumFieldElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %11 [
    i32 0, label %4
    i32 1, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK16EnumFieldElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, ptr @.str.5, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK16EnumFieldElement3dupEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN16EnumFieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %2) #9
          to label %3 unwind label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.EnumFieldElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.EnumFieldElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  ret ptr %2

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16EnumFieldElement23getNextEnumFieldSiblingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 45) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK16EnumFieldElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MessageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14MessageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MessageElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14MessageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14MessageElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14MessageElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13StructElement16getAttributeNameEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14MessageElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14MessageElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14MessageElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14MessageElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN14MessageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.MessageElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.MessageElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.MessageElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MessageElement21getNextMessageSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 46) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MessageElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MessageElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14MessageElement18getFirstFieldChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 50) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13PacketElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13PacketElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13PacketElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13PacketElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK13PacketElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK13PacketElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13StructElement16getAttributeNameEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13PacketElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13PacketElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK13PacketElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK13PacketElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13PacketElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.PacketElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.PacketElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.PacketElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13PacketElement20getNextPacketSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 47) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13PacketElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13PacketElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13PacketElement18getFirstFieldChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 50) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ClassElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ClassElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ClassElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ClassElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12ClassElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12ClassElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13StructElement16getAttributeNameEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK12ClassElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12ClassElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12ClassElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12ClassElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN12ClassElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.ClassElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.ClassElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.ClassElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ClassElement19getNextClassSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 48) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ClassElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ClassElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12ClassElement18getFirstFieldChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 50) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13StructElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13StructElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !302
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13StructElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13StructElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK13StructElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK13StructElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13StructElement16getAttributeNameEi, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13StructElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  %11 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13StructElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK13StructElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, ptr @.str.5, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK13StructElement3dupEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13StructElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #9
          to label %3 unwind label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.StructElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.StructElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %class.StructElement, ptr %2, i64 0, i32 3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #9
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13StructElement20getNextStructSiblingEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 49) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13StructElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13StructElement21getFirstPropertyChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13StructElement18getFirstFieldChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 50) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV12FieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %7, align 8, !tbaa !460
  %8 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 1, !tbaa !462
  %9 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  store i8 0, ptr %9, align 2, !tbaa !463
  %10 = load ptr, ptr %0, align 8, !tbaa !302
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %13 unwind label %14

13:                                               ; preds = %1
  ret void

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FieldElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV12FieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 8, !tbaa !460
  %9 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  store i8 0, ptr %9, align 1, !tbaa !462
  %10 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  store i8 0, ptr %10, align 2, !tbaa !463
  %11 = load ptr, ptr %0, align 8, !tbaa !302
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %14 unwind label %15

14:                                               ; preds = %2
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK12FieldElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !301 {
  ret i32 8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12FieldElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp ult i32 %1, 8
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK12FieldElement16getAttributeNameEi, i64 %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FieldElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %33 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
    i32 5, label %24
    i32 6, label %27
    i32 7, label %30
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  br label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !460, !range !331, !noundef !332
  %12 = icmp ne i8 %11, 0
  %13 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %12) #9
  br label %33

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !462, !range !331, !noundef !332
  %17 = icmp ne i8 %16, 0
  %18 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %17) #9
  br label %33

19:                                               ; preds = %2
  %20 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !463, !range !331, !noundef !332
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef ptr @_ZN10NEDElement12boolToStringEb(i1 noundef zeroext %22) #9
  br label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  %26 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #10
  br label %33

27:                                               ; preds = %2
  %28 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  %29 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #10
  br label %33

30:                                               ; preds = %2
  %31 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  %32 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #10
  br label %33

33:                                               ; preds = %2, %30, %27, %24, %19, %14, %9, %6, %3
  %34 = phi ptr [ %32, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ], [ %8, %6 ], [ %5, %3 ], [ null, %2 ]
  ret ptr %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FieldElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  switch i32 %1, label %31 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %14
    i32 4, label %18
    i32 5, label %22
    i32 6, label %25
    i32 7, label %28
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2) #9
  br label %31

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %2) #9
  br label %31

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %12 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 8, !tbaa !460
  br label %31

14:                                               ; preds = %3
  %15 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %16 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 1, !tbaa !462
  br label %31

18:                                               ; preds = %3
  %19 = tail call noundef zeroext i1 @_ZN10NEDElement12stringToBoolEPKc(ptr noundef %2) #9
  %20 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 2, !tbaa !463
  br label %31

22:                                               ; preds = %3
  %23 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %2) #9
  br label %31

25:                                               ; preds = %3
  %26 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  %27 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %2) #9
  br label %31

28:                                               ; preds = %3
  %29 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  %30 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %2) #9
  br label %31

31:                                               ; preds = %3, %28, %25, %22, %18, %14, %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK12FieldElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable._ZNK12FieldElement19getAttributeDefaultEi, i64 %7)
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ null, %2 ], [ %8, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK12FieldElement3dupEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #11
  invoke void @_ZN12FieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %2) #9
          to label %3 unwind label %28

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %7 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %10 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !460, !range !331, !noundef !332
  %12 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 3
  store i8 %11, ptr %12, align 8, !tbaa !460
  %13 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !462, !range !331, !noundef !332
  %15 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 4
  store i8 %14, ptr %15, align 1, !tbaa !462
  %16 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 5
  %17 = load i8, ptr %16, align 2, !tbaa !463, !range !331, !noundef !332
  %18 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 5
  store i8 %17, ptr %18, align 2, !tbaa !463
  %19 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 6
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %19) #9
  %22 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 7
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %22) #9
  %25 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %class.FieldElement, ptr %2, i64 0, i32 8
  %27 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %25) #9
  ret ptr %2

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FieldElement19getNextFieldSiblingEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 50) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK12FieldElement20getFirstCommentChildEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 3) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14UnknownElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !428 {
  tail call void @_ZN10NEDElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14UnknownElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14UnknownElementC2EP10NEDElement(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  tail call void @_ZN10NEDElementC2EPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14UnknownElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14UnknownElement16getNumAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !428 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK14UnknownElement16getAttributeNameEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @.str.52, ptr null
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK14UnknownElement12getAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14UnknownElement12setAttributeEiPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !301 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK14UnknownElement19getAttributeDefaultEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !428 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZNK14UnknownElement3dupEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14UnknownElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #9
          to label %3 unwind label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.UnknownElement, ptr %2, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK14UnknownElement21getNextUnknownSiblingEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 51) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN17NEDElementFactory11getInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  %1 = load ptr, ptr @_ZN17NEDElementFactory1fE, align 8, !tbaa !465
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !466

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #11
  tail call void @_ZN17NEDElementFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  store ptr %4, ptr @_ZN17NEDElementFactory1fE, align 8, !tbaa !465
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17NEDElementFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !319 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV17NEDElementFactory, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN17NEDElementFactory20createElementWithTagEPKc(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %3 = load i8, ptr %1, align 1, !tbaa !467
  %4 = icmp eq i8 %3, 102
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.53) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %69

8:                                                ; preds = %5
  %9 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12FilesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #9
          to label %415 unwind label %10

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #12
  br label %417

12:                                               ; preds = %2
  switch i8 %3, label %69 [
    i8 110, label %13
    i8 99, label %20
    i8 112, label %27
    i8 105, label %34
    i8 101, label %48
    i8 115, label %62
  ]

13:                                               ; preds = %12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.54) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %13
  %17 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14NedFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %17) #9
          to label %415 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %17) #12
  br label %417

20:                                               ; preds = %12
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.55) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14CommentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %24) #9
          to label %415 unwind label %25

25:                                               ; preds = %23
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %24) #12
  br label %417

27:                                               ; preds = %12
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.56) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14PackageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %31) #9
          to label %415 unwind label %32

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %31) #12
  br label %417

34:                                               ; preds = %12
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.57) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN13ImportElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %38) #9
          to label %415 unwind label %39

39:                                               ; preds = %37
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %38) #12
  br label %417

41:                                               ; preds = %27
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.58) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #11
  invoke void @_ZN19PropertyDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %45) #9
          to label %415 unwind label %46

46:                                               ; preds = %44
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %45) #12
  br label %417

48:                                               ; preds = %12
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.59) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %228

51:                                               ; preds = %48
  %52 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ExtendsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %52) #9
          to label %415 unwind label %53

53:                                               ; preds = %51
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %52) #12
  br label %417

55:                                               ; preds = %34
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.60) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN20InterfaceNameElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %59) #9
          to label %415 unwind label %60

60:                                               ; preds = %58
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %59) #12
  br label %417

62:                                               ; preds = %12
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.61) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %162

65:                                               ; preds = %62
  %66 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN19SimpleModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %66) #9
          to label %415 unwind label %67

67:                                               ; preds = %65
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %66) #12
  br label %417

69:                                               ; preds = %12, %55, %41, %13, %5, %20
  %70 = phi i1 [ false, %20 ], [ false, %5 ], [ false, %13 ], [ true, %55 ], [ false, %41 ], [ false, %12 ]
  %71 = phi i1 [ true, %20 ], [ false, %5 ], [ false, %13 ], [ false, %55 ], [ false, %41 ], [ false, %12 ]
  %72 = phi i1 [ false, %20 ], [ false, %5 ], [ true, %13 ], [ false, %55 ], [ false, %41 ], [ false, %12 ]
  %73 = phi i1 [ false, %20 ], [ false, %5 ], [ false, %13 ], [ false, %55 ], [ true, %41 ], [ false, %12 ]
  %74 = icmp eq i8 %3, 109
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.62) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN22ModuleInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %79) #9
          to label %415 unwind label %80

80:                                               ; preds = %78
  %81 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %79) #12
  br label %417

82:                                               ; preds = %75, %69
  br i1 %71, label %83, label %104

83:                                               ; preds = %82
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.63) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN21CompoundModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %87) #9
          to label %415 unwind label %88

88:                                               ; preds = %86
  %89 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %87) #12
  br label %417

90:                                               ; preds = %83
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.64) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN23ChannelInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %94) #9
          to label %415 unwind label %95

95:                                               ; preds = %93
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %94) #12
  br label %417

97:                                               ; preds = %90
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.65) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ChannelElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %101) #9
          to label %415 unwind label %102

102:                                              ; preds = %100
  %103 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %101) #12
  br label %417

104:                                              ; preds = %82, %97
  br i1 %73, label %105, label %140

105:                                              ; preds = %104
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.66) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN17ParametersElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %109) #9
          to label %415 unwind label %110

110:                                              ; preds = %108
  %111 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %109) #12
  br label %417

112:                                              ; preds = %105
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.67) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #11
  invoke void @_ZN12ParamElementC2Ev(ptr noundef nonnull align 8 dereferenceable(185) %116) #9
          to label %415 unwind label %117

117:                                              ; preds = %115
  %118 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %116) #12
  br label %417

119:                                              ; preds = %112
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.15) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN14PatternElementC2Ev(ptr noundef nonnull align 8 dereferenceable(177) %123) #9
          to label %415 unwind label %124

124:                                              ; preds = %122
  %125 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %123) #12
  br label %417

126:                                              ; preds = %119
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.68) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN15PropertyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %130) #9
          to label %415 unwind label %131

131:                                              ; preds = %129
  %132 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %130) #12
  br label %417

133:                                              ; preds = %126
  %134 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.69) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18PropertyKeyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %137) #9
          to label %415 unwind label %138

138:                                              ; preds = %136
  %139 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %137) #12
  br label %417

140:                                              ; preds = %104, %133
  switch i8 %3, label %176 [
    i8 103, label %141
    i8 116, label %155
  ]

141:                                              ; preds = %140
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.70) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12GatesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %145) #9
          to label %415 unwind label %146

146:                                              ; preds = %144
  %147 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %145) #12
  br label %417

148:                                              ; preds = %141
  %149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.71) #13
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %148
  %152 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN11GateElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %152) #9
          to label %415 unwind label %153

153:                                              ; preds = %151
  %154 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %152) #12
  br label %417

155:                                              ; preds = %140
  %156 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.72) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12TypesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %159) #9
          to label %415 unwind label %160

160:                                              ; preds = %158
  %161 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %159) #12
  br label %417

162:                                              ; preds = %62
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.73) #13
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17SubmodulesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %166) #9
          to label %415 unwind label %167

167:                                              ; preds = %165
  %168 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %166) #12
  br label %417

169:                                              ; preds = %162
  %170 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.74) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #11
  invoke void @_ZN16SubmoduleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(272) %173) #9
          to label %415 unwind label %174

174:                                              ; preds = %172
  %175 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %173) #12
  br label %417

176:                                              ; preds = %140, %148, %155, %169
  %177 = phi i1 [ %74, %148 ], [ %74, %155 ], [ false, %169 ], [ %74, %140 ]
  %178 = phi i1 [ %73, %148 ], [ %73, %155 ], [ false, %169 ], [ %73, %140 ]
  %179 = phi i1 [ %72, %148 ], [ %72, %155 ], [ false, %169 ], [ %72, %140 ]
  %180 = phi i1 [ %71, %148 ], [ %71, %155 ], [ false, %169 ], [ %71, %140 ]
  %181 = phi i1 [ %70, %148 ], [ %70, %155 ], [ false, %169 ], [ %70, %140 ]
  %182 = phi i1 [ false, %148 ], [ false, %155 ], [ true, %169 ], [ false, %140 ]
  br i1 %180, label %183, label %211

183:                                              ; preds = %176
  %184 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.75) #13
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN18ConnectionsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %187) #9
          to label %415 unwind label %188

188:                                              ; preds = %186
  %189 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %187) #12
  br label %417

190:                                              ; preds = %183
  %191 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.76) #13
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #11
  invoke void @_ZN17ConnectionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(400) %194) #9
          to label %415 unwind label %195

195:                                              ; preds = %193
  %196 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %194) #12
  br label %417

197:                                              ; preds = %190
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.77) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN18ChannelSpecElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %201) #9
          to label %415 unwind label %202

202:                                              ; preds = %200
  %203 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %201) #12
  br label %417

204:                                              ; preds = %197
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.78) #13
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN22ConnectionGroupElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %208) #9
          to label %415 unwind label %209

209:                                              ; preds = %207
  %210 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %208) #12
  br label %417

211:                                              ; preds = %176, %204
  %212 = icmp eq i8 %3, 108
  br i1 %212, label %213, label %220

213:                                              ; preds = %211
  %214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.79) #13
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11LoopElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %217) #9
          to label %415 unwind label %218

218:                                              ; preds = %216
  %219 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %217) #12
  br label %417

220:                                              ; preds = %213, %211
  br i1 %180, label %221, label %235

221:                                              ; preds = %220
  %222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.38) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %221
  %225 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16ConditionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %225) #9
          to label %415 unwind label %226

226:                                              ; preds = %224
  %227 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %225) #12
  br label %417

228:                                              ; preds = %48
  %229 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.80) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %228
  %232 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17ExpressionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %232) #9
          to label %415 unwind label %233

233:                                              ; preds = %231
  %234 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %232) #12
  br label %417

235:                                              ; preds = %220, %221
  %236 = icmp eq i8 %3, 111
  br i1 %236, label %237, label %244

237:                                              ; preds = %235
  %238 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.81) #13
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %237
  %241 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15OperatorElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %241) #9
          to label %415 unwind label %242

242:                                              ; preds = %240
  %243 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %241) #12
  br label %417

244:                                              ; preds = %235
  br i1 %4, label %245, label %252

245:                                              ; preds = %244
  %246 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.82) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15FunctionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %249) #9
          to label %415 unwind label %250

250:                                              ; preds = %248
  %251 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %249) #12
  br label %417

252:                                              ; preds = %228, %237, %245, %244
  %253 = phi i1 [ false, %228 ], [ %212, %237 ], [ %212, %245 ], [ %212, %244 ]
  %254 = phi i1 [ false, %228 ], [ %177, %237 ], [ %177, %245 ], [ %177, %244 ]
  %255 = phi i1 [ false, %228 ], [ %178, %237 ], [ %178, %245 ], [ %178, %244 ]
  %256 = phi i1 [ false, %228 ], [ %179, %237 ], [ %179, %245 ], [ %179, %244 ]
  %257 = phi i1 [ false, %228 ], [ %180, %237 ], [ %180, %245 ], [ %180, %244 ]
  %258 = phi i1 [ false, %228 ], [ %181, %237 ], [ %181, %245 ], [ %181, %244 ]
  %259 = phi i1 [ true, %228 ], [ false, %237 ], [ false, %245 ], [ false, %244 ]
  %260 = phi i1 [ false, %228 ], [ %182, %237 ], [ %182, %245 ], [ %182, %244 ]
  br i1 %258, label %261, label %268

261:                                              ; preds = %252
  %262 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.83) #13
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN12IdentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %265) #9
          to label %415 unwind label %266

266:                                              ; preds = %264
  %267 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %265) #12
  br label %417

268:                                              ; preds = %261, %252
  br i1 %253, label %269, label %276

269:                                              ; preds = %268
  %270 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.84) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #11
  invoke void @_ZN14LiteralElementC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %273) #9
          to label %415 unwind label %274

274:                                              ; preds = %272
  %275 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %273) #12
  br label %417

276:                                              ; preds = %269, %268
  br i1 %254, label %277, label %284

277:                                              ; preds = %276
  %278 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.85) #13
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14MsgFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %281) #9
          to label %415 unwind label %282

282:                                              ; preds = %280
  %283 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %281) #12
  br label %417

284:                                              ; preds = %277, %276
  br i1 %256, label %285, label %292

285:                                              ; preds = %284
  %286 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.86) #13
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16NamespaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %289) #9
          to label %415 unwind label %290

290:                                              ; preds = %288
  %291 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %289) #12
  br label %417

292:                                              ; preds = %285, %284
  br i1 %257, label %293, label %300

293:                                              ; preds = %292
  %294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.87) #13
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16CplusplusElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %297) #9
          to label %415 unwind label %298

298:                                              ; preds = %296
  %299 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %297) #12
  br label %417

300:                                              ; preds = %293, %292
  br i1 %260, label %301, label %308

301:                                              ; preds = %300
  %302 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.88) #13
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17StructDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %305) #9
          to label %415 unwind label %306

306:                                              ; preds = %304
  %307 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %305) #12
  br label %417

308:                                              ; preds = %301, %300
  br i1 %257, label %309, label %316

309:                                              ; preds = %308
  %310 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.89) #13
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN16ClassDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %313) #9
          to label %415 unwind label %314

314:                                              ; preds = %312
  %315 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %313) #12
  br label %417

316:                                              ; preds = %309, %308
  br i1 %254, label %317, label %324

317:                                              ; preds = %316
  %318 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.90) #13
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18MessageDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %321) #9
          to label %415 unwind label %322

322:                                              ; preds = %320
  %323 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %321) #12
  br label %417

324:                                              ; preds = %317, %316
  br i1 %255, label %325, label %332

325:                                              ; preds = %324
  %326 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.91) #13
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17PacketDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %329) #9
          to label %415 unwind label %330

330:                                              ; preds = %328
  %331 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %329) #12
  br label %417

332:                                              ; preds = %325, %324
  br i1 %259, label %333, label %361

333:                                              ; preds = %332
  %334 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.92) #13
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15EnumDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %337) #9
          to label %415 unwind label %338

338:                                              ; preds = %336
  %339 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %337) #12
  br label %417

340:                                              ; preds = %333
  %341 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.93) #13
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11EnumElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %344) #9
          to label %415 unwind label %345

345:                                              ; preds = %343
  %346 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %344) #12
  br label %417

347:                                              ; preds = %340
  %348 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.94) #13
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17EnumFieldsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %351) #9
          to label %415 unwind label %352

352:                                              ; preds = %350
  %353 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %351) #12
  br label %417

354:                                              ; preds = %347
  %355 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.95) #13
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN16EnumFieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %358) #9
          to label %415 unwind label %359

359:                                              ; preds = %357
  %360 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %358) #12
  br label %417

361:                                              ; preds = %332, %354
  br i1 %254, label %362, label %369

362:                                              ; preds = %361
  %363 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.96) #13
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN14MessageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %366) #9
          to label %415 unwind label %367

367:                                              ; preds = %365
  %368 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %366) #12
  br label %417

369:                                              ; preds = %362, %361
  br i1 %255, label %370, label %377

370:                                              ; preds = %369
  %371 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.97) #13
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13PacketElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %374) #9
          to label %415 unwind label %375

375:                                              ; preds = %373
  %376 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %374) #12
  br label %417

377:                                              ; preds = %370, %369
  br i1 %257, label %378, label %385

378:                                              ; preds = %377
  %379 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.98) #13
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN12ClassElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %382) #9
          to label %415 unwind label %383

383:                                              ; preds = %381
  %384 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %382) #12
  br label %417

385:                                              ; preds = %378, %377
  br i1 %260, label %386, label %393

386:                                              ; preds = %385
  %387 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.99) #13
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %410

389:                                              ; preds = %386
  %390 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13StructElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %390) #9
          to label %415 unwind label %391

391:                                              ; preds = %389
  %392 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %390) #12
  br label %417

393:                                              ; preds = %385
  br i1 %4, label %394, label %401

394:                                              ; preds = %393
  %395 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.100) #13
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %394
  %398 = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #11
  invoke void @_ZN12FieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %398) #9
          to label %415 unwind label %399

399:                                              ; preds = %397
  %400 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %398) #12
  br label %417

401:                                              ; preds = %393
  %402 = icmp eq i8 %3, 117
  br i1 %402, label %403, label %410

403:                                              ; preds = %401
  %404 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.101) #13
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14UnknownElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %407) #9
          to label %415 unwind label %408

408:                                              ; preds = %406
  %409 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %407) #12
  br label %417

410:                                              ; preds = %386, %394, %403, %401
  %411 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void (ptr, ptr, ...) @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %411, ptr noundef nonnull @.str.102, ptr noundef nonnull %1) #9
          to label %412 unwind label %413

412:                                              ; preds = %410
  tail call void @__cxa_throw(ptr nonnull %411, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #15
  unreachable

413:                                              ; preds = %410
  %414 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %411) #14
  br label %417

415:                                              ; preds = %406, %397, %389, %381, %373, %365, %357, %350, %343, %336, %328, %320, %312, %304, %296, %288, %280, %272, %264, %248, %240, %231, %224, %216, %207, %200, %193, %186, %172, %165, %158, %151, %144, %136, %129, %122, %115, %108, %100, %93, %86, %78, %65, %58, %51, %44, %37, %30, %23, %16, %8
  %416 = phi ptr [ %9, %8 ], [ %17, %16 ], [ %24, %23 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ], [ %52, %51 ], [ %59, %58 ], [ %66, %65 ], [ %79, %78 ], [ %87, %86 ], [ %94, %93 ], [ %101, %100 ], [ %109, %108 ], [ %116, %115 ], [ %123, %122 ], [ %130, %129 ], [ %137, %136 ], [ %145, %144 ], [ %152, %151 ], [ %159, %158 ], [ %166, %165 ], [ %173, %172 ], [ %187, %186 ], [ %194, %193 ], [ %201, %200 ], [ %208, %207 ], [ %217, %216 ], [ %225, %224 ], [ %232, %231 ], [ %241, %240 ], [ %249, %248 ], [ %265, %264 ], [ %273, %272 ], [ %281, %280 ], [ %289, %288 ], [ %297, %296 ], [ %305, %304 ], [ %313, %312 ], [ %321, %320 ], [ %329, %328 ], [ %337, %336 ], [ %344, %343 ], [ %351, %350 ], [ %358, %357 ], [ %366, %365 ], [ %374, %373 ], [ %382, %381 ], [ %390, %389 ], [ %398, %397 ], [ %407, %406 ]
  ret ptr %416

417:                                              ; preds = %413, %408, %399, %391, %383, %375, %367, %359, %352, %345, %338, %330, %322, %314, %306, %298, %290, %282, %274, %266, %250, %242, %233, %226, %218, %209, %202, %195, %188, %174, %167, %160, %153, %146, %138, %131, %124, %117, %110, %102, %95, %88, %80, %67, %60, %53, %46, %39, %32, %25, %18, %10
  %418 = phi { ptr, i32 } [ %414, %413 ], [ %409, %408 ], [ %400, %399 ], [ %392, %391 ], [ %384, %383 ], [ %376, %375 ], [ %368, %367 ], [ %360, %359 ], [ %353, %352 ], [ %346, %345 ], [ %339, %338 ], [ %331, %330 ], [ %323, %322 ], [ %315, %314 ], [ %307, %306 ], [ %299, %298 ], [ %291, %290 ], [ %283, %282 ], [ %275, %274 ], [ %267, %266 ], [ %251, %250 ], [ %243, %242 ], [ %234, %233 ], [ %227, %226 ], [ %219, %218 ], [ %210, %209 ], [ %203, %202 ], [ %196, %195 ], [ %189, %188 ], [ %175, %174 ], [ %168, %167 ], [ %161, %160 ], [ %154, %153 ], [ %147, %146 ], [ %139, %138 ], [ %132, %131 ], [ %125, %124 ], [ %118, %117 ], [ %111, %110 ], [ %103, %102 ], [ %96, %95 ], [ %89, %88 ], [ %81, %80 ], [ %68, %67 ], [ %61, %60 ], [ %54, %53 ], [ %47, %46 ], [ %40, %39 ], [ %33, %32 ], [ %26, %25 ], [ %19, %18 ], [ %11, %10 ]
  resume { ptr, i32 } %418
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN17NEDElementFactory20createElementWithTagEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  switch i32 %1, label %207 [
    i32 1, label %3
    i32 2, label %7
    i32 3, label %11
    i32 4, label %15
    i32 5, label %19
    i32 6, label %23
    i32 7, label %27
    i32 8, label %31
    i32 9, label %35
    i32 10, label %39
    i32 11, label %43
    i32 12, label %47
    i32 13, label %51
    i32 14, label %55
    i32 15, label %59
    i32 16, label %63
    i32 17, label %67
    i32 18, label %71
    i32 19, label %75
    i32 20, label %79
    i32 21, label %83
    i32 22, label %87
    i32 23, label %91
    i32 24, label %95
    i32 25, label %99
    i32 26, label %103
    i32 27, label %107
    i32 28, label %111
    i32 29, label %115
    i32 30, label %119
    i32 31, label %123
    i32 32, label %127
    i32 33, label %131
    i32 34, label %135
    i32 35, label %139
    i32 36, label %143
    i32 37, label %147
    i32 38, label %151
    i32 39, label %155
    i32 40, label %159
    i32 41, label %163
    i32 42, label %167
    i32 43, label %171
    i32 44, label %175
    i32 45, label %179
    i32 46, label %183
    i32 47, label %187
    i32 48, label %191
    i32 49, label %195
    i32 50, label %199
    i32 51, label %203
  ], !prof !468

3:                                                ; preds = %2
  %4 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12FilesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #9
          to label %212 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %4) #12
  br label %214

7:                                                ; preds = %2
  %8 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14NedFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #9
          to label %212 unwind label %9

9:                                                ; preds = %7
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %8) #12
  br label %214

11:                                               ; preds = %2
  %12 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14CommentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %12) #9
          to label %212 unwind label %13

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %12) #12
  br label %214

15:                                               ; preds = %2
  %16 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14PackageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %16) #9
          to label %212 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %16) #12
  br label %214

19:                                               ; preds = %2
  %20 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN13ImportElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %20) #9
          to label %212 unwind label %21

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %20) #12
  br label %214

23:                                               ; preds = %2
  %24 = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #11
  invoke void @_ZN19PropertyDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %24) #9
          to label %212 unwind label %25

25:                                               ; preds = %23
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %24) #12
  br label %214

27:                                               ; preds = %2
  %28 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ExtendsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %28) #9
          to label %212 unwind label %29

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %28) #12
  br label %214

31:                                               ; preds = %2
  %32 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN20InterfaceNameElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %32) #9
          to label %212 unwind label %33

33:                                               ; preds = %31
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %32) #12
  br label %214

35:                                               ; preds = %2
  %36 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN19SimpleModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %36) #9
          to label %212 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %36) #12
  br label %214

39:                                               ; preds = %2
  %40 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN22ModuleInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %40) #9
          to label %212 unwind label %41

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %40) #12
  br label %214

43:                                               ; preds = %2
  %44 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN21CompoundModuleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %44) #9
          to label %212 unwind label %45

45:                                               ; preds = %43
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %44) #12
  br label %214

47:                                               ; preds = %2
  %48 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN23ChannelInterfaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %48) #9
          to label %212 unwind label %49

49:                                               ; preds = %47
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %48) #12
  br label %214

51:                                               ; preds = %2
  %52 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14ChannelElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %52) #9
          to label %212 unwind label %53

53:                                               ; preds = %51
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %52) #12
  br label %214

55:                                               ; preds = %2
  %56 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN17ParametersElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %56) #9
          to label %212 unwind label %57

57:                                               ; preds = %55
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %56) #12
  br label %214

59:                                               ; preds = %2
  %60 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #11
  invoke void @_ZN12ParamElementC2Ev(ptr noundef nonnull align 8 dereferenceable(185) %60) #9
          to label %212 unwind label %61

61:                                               ; preds = %59
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %60) #12
  br label %214

63:                                               ; preds = %2
  %64 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN14PatternElementC2Ev(ptr noundef nonnull align 8 dereferenceable(177) %64) #9
          to label %212 unwind label %65

65:                                               ; preds = %63
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %64) #12
  br label %214

67:                                               ; preds = %2
  %68 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN15PropertyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %68) #9
          to label %212 unwind label %69

69:                                               ; preds = %67
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %68) #12
  br label %214

71:                                               ; preds = %2
  %72 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18PropertyKeyElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %72) #9
          to label %212 unwind label %73

73:                                               ; preds = %71
  %74 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %72) #12
  br label %214

75:                                               ; preds = %2
  %76 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12GatesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %76) #9
          to label %212 unwind label %77

77:                                               ; preds = %75
  %78 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %76) #12
  br label %214

79:                                               ; preds = %2
  %80 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN11GateElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %80) #9
          to label %212 unwind label %81

81:                                               ; preds = %79
  %82 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %80) #12
  br label %214

83:                                               ; preds = %2
  %84 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN12TypesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %84) #9
          to label %212 unwind label %85

85:                                               ; preds = %83
  %86 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %84) #12
  br label %214

87:                                               ; preds = %2
  %88 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17SubmodulesElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %88) #9
          to label %212 unwind label %89

89:                                               ; preds = %87
  %90 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %88) #12
  br label %214

91:                                               ; preds = %2
  %92 = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #11
  invoke void @_ZN16SubmoduleElementC2Ev(ptr noundef nonnull align 8 dereferenceable(272) %92) #9
          to label %212 unwind label %93

93:                                               ; preds = %91
  %94 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %92) #12
  br label %214

95:                                               ; preds = %2
  %96 = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11
  invoke void @_ZN18ConnectionsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %96) #9
          to label %212 unwind label %97

97:                                               ; preds = %95
  %98 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %96) #12
  br label %214

99:                                               ; preds = %2
  %100 = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #11
  invoke void @_ZN17ConnectionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(400) %100) #9
          to label %212 unwind label %101

101:                                              ; preds = %99
  %102 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %100) #12
  br label %214

103:                                              ; preds = %2
  %104 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN18ChannelSpecElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %104) #9
          to label %212 unwind label %105

105:                                              ; preds = %103
  %106 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %104) #12
  br label %214

107:                                              ; preds = %2
  %108 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN22ConnectionGroupElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %108) #9
          to label %212 unwind label %109

109:                                              ; preds = %107
  %110 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %108) #12
  br label %214

111:                                              ; preds = %2
  %112 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11LoopElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %112) #9
          to label %212 unwind label %113

113:                                              ; preds = %111
  %114 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %112) #12
  br label %214

115:                                              ; preds = %2
  %116 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16ConditionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %116) #9
          to label %212 unwind label %117

117:                                              ; preds = %115
  %118 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %116) #12
  br label %214

119:                                              ; preds = %2
  %120 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17ExpressionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %120) #9
          to label %212 unwind label %121

121:                                              ; preds = %119
  %122 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %120) #12
  br label %214

123:                                              ; preds = %2
  %124 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15OperatorElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %124) #9
          to label %212 unwind label %125

125:                                              ; preds = %123
  %126 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %124) #12
  br label %214

127:                                              ; preds = %2
  %128 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15FunctionElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %128) #9
          to label %212 unwind label %129

129:                                              ; preds = %127
  %130 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %128) #12
  br label %214

131:                                              ; preds = %2
  %132 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN12IdentElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %132) #9
          to label %212 unwind label %133

133:                                              ; preds = %131
  %134 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %132) #12
  br label %214

135:                                              ; preds = %2
  %136 = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #11
  invoke void @_ZN14LiteralElementC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %136) #9
          to label %212 unwind label %137

137:                                              ; preds = %135
  %138 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %136) #12
  br label %214

139:                                              ; preds = %2
  %140 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN14MsgFileElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %140) #9
          to label %212 unwind label %141

141:                                              ; preds = %139
  %142 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %140) #12
  br label %214

143:                                              ; preds = %2
  %144 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16NamespaceElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %144) #9
          to label %212 unwind label %145

145:                                              ; preds = %143
  %146 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %144) #12
  br label %214

147:                                              ; preds = %2
  %148 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN16CplusplusElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %148) #9
          to label %212 unwind label %149

149:                                              ; preds = %147
  %150 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %148) #12
  br label %214

151:                                              ; preds = %2
  %152 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17StructDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %152) #9
          to label %212 unwind label %153

153:                                              ; preds = %151
  %154 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %152) #12
  br label %214

155:                                              ; preds = %2
  %156 = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11
  invoke void @_ZN16ClassDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %156) #9
          to label %212 unwind label %157

157:                                              ; preds = %155
  %158 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %156) #12
  br label %214

159:                                              ; preds = %2
  %160 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN18MessageDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %160) #9
          to label %212 unwind label %161

161:                                              ; preds = %159
  %162 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %160) #12
  br label %214

163:                                              ; preds = %2
  %164 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN17PacketDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %164) #9
          to label %212 unwind label %165

165:                                              ; preds = %163
  %166 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %164) #12
  br label %214

167:                                              ; preds = %2
  %168 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN15EnumDeclElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %168) #9
          to label %212 unwind label %169

169:                                              ; preds = %167
  %170 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %168) #12
  br label %214

171:                                              ; preds = %2
  %172 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN11EnumElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %172) #9
          to label %212 unwind label %173

173:                                              ; preds = %171
  %174 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %172) #12
  br label %214

175:                                              ; preds = %2
  %176 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11
  invoke void @_ZN17EnumFieldsElementC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %176) #9
          to label %212 unwind label %177

177:                                              ; preds = %175
  %178 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %176) #12
  br label %214

179:                                              ; preds = %2
  %180 = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #11
  invoke void @_ZN16EnumFieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %180) #9
          to label %212 unwind label %181

181:                                              ; preds = %179
  %182 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %180) #12
  br label %214

183:                                              ; preds = %2
  %184 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN14MessageElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %184) #9
          to label %212 unwind label %185

185:                                              ; preds = %183
  %186 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %184) #12
  br label %214

187:                                              ; preds = %2
  %188 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13PacketElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %188) #9
          to label %212 unwind label %189

189:                                              ; preds = %187
  %190 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %188) #12
  br label %214

191:                                              ; preds = %2
  %192 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN12ClassElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %192) #9
          to label %212 unwind label %193

193:                                              ; preds = %191
  %194 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %192) #12
  br label %214

195:                                              ; preds = %2
  %196 = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #11
  invoke void @_ZN13StructElementC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %196) #9
          to label %212 unwind label %197

197:                                              ; preds = %195
  %198 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %196) #12
  br label %214

199:                                              ; preds = %2
  %200 = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #11
  invoke void @_ZN12FieldElementC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %200) #9
          to label %212 unwind label %201

201:                                              ; preds = %199
  %202 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %200) #12
  br label %214

203:                                              ; preds = %2
  %204 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #11
  invoke void @_ZN14UnknownElementC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %204) #9
          to label %212 unwind label %205

205:                                              ; preds = %203
  %206 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %204) #12
  br label %214

207:                                              ; preds = %2
  %208 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void (ptr, ptr, ...) @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %208, ptr noundef nonnull @.str.103, i32 noundef %1) #9
          to label %209 unwind label %210

209:                                              ; preds = %207
  tail call void @__cxa_throw(ptr nonnull %208, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #15
  unreachable

210:                                              ; preds = %207
  %211 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %208) #14
  br label %214

212:                                              ; preds = %203, %199, %195, %191, %187, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  %213 = phi ptr [ %4, %3 ], [ %8, %7 ], [ %12, %11 ], [ %16, %15 ], [ %20, %19 ], [ %24, %23 ], [ %28, %27 ], [ %32, %31 ], [ %36, %35 ], [ %40, %39 ], [ %44, %43 ], [ %48, %47 ], [ %52, %51 ], [ %56, %55 ], [ %60, %59 ], [ %64, %63 ], [ %68, %67 ], [ %72, %71 ], [ %76, %75 ], [ %80, %79 ], [ %84, %83 ], [ %88, %87 ], [ %92, %91 ], [ %96, %95 ], [ %100, %99 ], [ %104, %103 ], [ %108, %107 ], [ %112, %111 ], [ %116, %115 ], [ %120, %119 ], [ %124, %123 ], [ %128, %127 ], [ %132, %131 ], [ %136, %135 ], [ %140, %139 ], [ %144, %143 ], [ %148, %147 ], [ %152, %151 ], [ %156, %155 ], [ %160, %159 ], [ %164, %163 ], [ %168, %167 ], [ %172, %171 ], [ %176, %175 ], [ %180, %179 ], [ %184, %183 ], [ %188, %187 ], [ %192, %191 ], [ %196, %195 ], [ %200, %199 ], [ %204, %203 ]
  ret ptr %213

214:                                              ; preds = %210, %205, %201, %197, %193, %189, %185, %181, %177, %173, %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %5
  %215 = phi { ptr, i32 } [ %211, %210 ], [ %206, %205 ], [ %202, %201 ], [ %198, %197 ], [ %194, %193 ], [ %190, %189 ], [ %186, %185 ], [ %182, %181 ], [ %178, %177 ], [ %174, %173 ], [ %170, %169 ], [ %166, %165 ], [ %162, %161 ], [ %158, %157 ], [ %154, %153 ], [ %150, %149 ], [ %146, %145 ], [ %142, %141 ], [ %138, %137 ], [ %134, %133 ], [ %130, %129 ], [ %126, %125 ], [ %122, %121 ], [ %118, %117 ], [ %114, %113 ], [ %110, %109 ], [ %106, %105 ], [ %102, %101 ], [ %98, %97 ], [ %94, %93 ], [ %90, %89 ], [ %86, %85 ], [ %82, %81 ], [ %78, %77 ], [ %74, %73 ], [ %70, %69 ], [ %66, %65 ], [ %62, %61 ], [ %58, %57 ], [ %54, %53 ], [ %50, %49 ], [ %46, %45 ], [ %42, %41 ], [ %38, %37 ], [ %34, %33 ], [ %30, %29 ], [ %26, %25 ], [ %22, %21 ], [ %18, %17 ], [ %14, %13 ], [ %10, %9 ], [ %6, %5 ]
  resume { ptr, i32 } %215
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FilesElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement7dupTreeEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12FilesElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12FilesElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 1
}

; Function Attrs: optsize
declare noundef i64 @_ZNK10NEDElement5getIdEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement5setIdEl(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement17getSourceLocationEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement17setSourceLocationEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK10NEDElement15getSourceRegionEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement15setSourceRegionERK15NEDSourceRegion(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement13applyDefaultsEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK10NEDElement15lookupAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12FilesElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FilesElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement19getAttributeDefaultEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement9getParentEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement14getPrevSiblingEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement11appendChildEPS_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement17insertChildBeforeEPS_S0_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN10NEDElement11removeChildEPS_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement20getFirstChildWithTagEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement21getNextSiblingWithTagEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK10NEDElement14getNumChildrenEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK10NEDElement21getNumChildrenWithTagEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement11setUserDataEP18NEDElementUserData(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14NedFileElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !305 {
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTV14NedFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14NedFileElementD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14NedFileElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14NedFileElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.54
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14NedFileElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !469 {
  ret i32 2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14NedFileElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !307 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14NedFileElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14CommentElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !312 {
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14CommentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.CommentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14CommentElementD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14CommentElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14CommentElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.55
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14CommentElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !470 {
  ret i32 3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14CommentElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !314 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14CommentElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PackageElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !319 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14PackageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PackageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PackageElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14PackageElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14PackageElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.56
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14PackageElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !342 {
  ret i32 4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14PackageElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14PackageElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ImportElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV13ImportElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ImportElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN13ImportElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13ImportElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.57
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13ImportElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13ImportElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13ImportElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN19PropertyDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV19PropertyDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN19PropertyDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN19PropertyDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19PropertyDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.58
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK19PropertyDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19PropertyDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN19PropertyDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ExtendsElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !319 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14ExtendsElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ExtendsElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14ExtendsElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ExtendsElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.59
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14ExtendsElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !471 {
  ret i32 7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ExtendsElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !334 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ExtendsElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20InterfaceNameElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !336 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV20InterfaceNameElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.InterfaceNameElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20InterfaceNameElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN20InterfaceNameElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK20InterfaceNameElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK20InterfaceNameElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !472 {
  ret i32 8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK20InterfaceNameElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN20InterfaceNameElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN19SimpleModuleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !318 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV19SimpleModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN19SimpleModuleElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN19SimpleModuleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19SimpleModuleElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.61
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK19SimpleModuleElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !473 {
  ret i32 9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19SimpleModuleElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !306 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN19SimpleModuleElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22ModuleInterfaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !334 {
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV22ModuleInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ModuleInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22ModuleInterfaceElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN22ModuleInterfaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22ModuleInterfaceElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.62
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22ModuleInterfaceElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !474 {
  ret i32 10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22ModuleInterfaceElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !342 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22ModuleInterfaceElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN21CompoundModuleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !338 {
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTV21CompoundModuleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN21CompoundModuleElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN21CompoundModuleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21CompoundModuleElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21CompoundModuleElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !475 {
  ret i32 11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21CompoundModuleElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !345 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN21CompoundModuleElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN23ChannelInterfaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV23ChannelInterfaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelInterfaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN23ChannelInterfaceElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN23ChannelInterfaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK23ChannelInterfaceElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23ChannelInterfaceElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK23ChannelInterfaceElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN23ChannelInterfaceElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ChannelElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !342 {
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV14ChannelElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ChannelElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14ChannelElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ChannelElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14ChannelElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !476 {
  ret i32 13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14ChannelElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ChannelElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ParametersElementD0Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ParametersElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ParametersElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 !prof !477 {
  ret i32 14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ParametersElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !340 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ParametersElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElementD2Ev(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #5 comdat align 2 !prof !357 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ParamElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElementD0Ev(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN12ParamElementD2Ev(ptr noundef nonnull align 8 dereferenceable(185) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12ParamElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.67
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12ParamElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #5 comdat align 2 !prof !478 {
  ret i32 15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12ParamElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(185) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !362 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(185) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternElementD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14PatternElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PatternElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternElementD0Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14PatternElementD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14PatternElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14PatternElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14PatternElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !370 {
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV15PropertyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PropertyElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElementD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN15PropertyElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15PropertyElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.68
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15PropertyElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !479 {
  ret i32 17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15PropertyElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !375 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15PropertyElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18PropertyKeyElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !380 {
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV18PropertyKeyElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PropertyKeyElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18PropertyKeyElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN18PropertyKeyElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18PropertyKeyElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.69
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18PropertyKeyElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !480 {
  ret i32 18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18PropertyKeyElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18PropertyKeyElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12GatesElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12GatesElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12GatesElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !481 {
  ret i32 19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12GatesElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12GatesElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11GateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !340 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV11GateElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11GateElementD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11GateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11GateElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.71
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11GateElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !482 {
  ret i32 20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11GateElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !390 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11GateElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12TypesElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12TypesElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.72
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12TypesElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12TypesElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12TypesElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17SubmodulesElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17SubmodulesElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.73
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17SubmodulesElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !483 {
  ret i32 22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17SubmodulesElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17SubmodulesElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 !prof !348 {
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTV16SubmoduleElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElementD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16SubmoduleElementD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16SubmoduleElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.74
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16SubmoduleElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 !prof !484 {
  ret i32 23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16SubmoduleElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !398 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18ConnectionsElementD0Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ConnectionsElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.75
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18ConnectionsElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #5 comdat align 2 !prof !485 {
  ret i32 24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ConnectionsElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18ConnectionsElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #5 comdat align 2 !prof !405 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ConnectionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %9 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElementD0Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17ConnectionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.76
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ConnectionElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #5 comdat align 2 !prof !486 {
  ret i32 25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ConnectionElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !414 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !487 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18ChannelSpecElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !422 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV18ChannelSpecElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18ChannelSpecElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN18ChannelSpecElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ChannelSpecElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.77
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18ChannelSpecElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !488 {
  ret i32 26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18ChannelSpecElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !424 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18ChannelSpecElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22ConnectionGroupElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22ConnectionGroupElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.78
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22ConnectionGroupElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !489 {
  ret i32 27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22ConnectionGroupElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22ConnectionGroupElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11LoopElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !430 {
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11LoopElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11LoopElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11LoopElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11LoopElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.79
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11LoopElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  ret i32 28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11LoopElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !431 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11LoopElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16ConditionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV16ConditionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ConditionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16ConditionElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16ConditionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16ConditionElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.38
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16ConditionElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16ConditionElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16ConditionElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ExpressionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !434 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV17ExpressionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ExpressionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ExpressionElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17ExpressionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ExpressionElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.80
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17ExpressionElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !491 {
  ret i32 30
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17ExpressionElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !436 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ExpressionElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15OperatorElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !439 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15OperatorElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15OperatorElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN15OperatorElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15OperatorElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.81
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15OperatorElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !492 {
  ret i32 31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15OperatorElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !439 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15OperatorElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15FunctionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !333 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV15FunctionElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15FunctionElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN15FunctionElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15FunctionElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.82
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15FunctionElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !493 {
  ret i32 32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15FunctionElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !337 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15FunctionElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12IdentElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !442 {
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTV12IdentElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12IdentElementD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN12IdentElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.83
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12IdentElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !494 {
  ret i32 33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !445 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12IdentElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElementD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 !prof !451 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV14LiteralElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElementD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14LiteralElementD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.84
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14LiteralElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 !prof !495 {
  ret i32 34
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !453 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14MsgFileElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTV14MsgFileElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.MsgFileElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14MsgFileElementD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14MsgFileElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14MsgFileElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.85
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14MsgFileElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 35
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14MsgFileElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MsgFileElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16NamespaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16NamespaceElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.NamespaceElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16NamespaceElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16NamespaceElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16NamespaceElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.86
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16NamespaceElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16NamespaceElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16NamespaceElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16CplusplusElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16CplusplusElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.CplusplusElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16CplusplusElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16CplusplusElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16CplusplusElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.87
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16CplusplusElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16CplusplusElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16CplusplusElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17StructDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17StructDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.StructDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17StructDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17StructDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17StructDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.88
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17StructDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 38
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17StructDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17StructDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16ClassDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ClassDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16ClassDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16ClassDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.89
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16ClassDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 39
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16ClassDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16ClassDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18MessageDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV18MessageDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MessageDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18MessageDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN18MessageDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18MessageDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.90
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18MessageDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 40
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18MessageDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18MessageDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17PacketDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV17PacketDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PacketDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17PacketDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17PacketDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17PacketDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.91
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17PacketDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 41
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17PacketDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17PacketDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15EnumDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV15EnumDeclElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumDeclElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15EnumDeclElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN15EnumDeclElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15EnumDeclElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.92
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15EnumDeclElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15EnumDeclElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15EnumDeclElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTV11EnumElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.EnumElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11EnumElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11EnumElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.93
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11EnumElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 43
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11EnumElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11EnumElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17EnumFieldsElementD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17EnumFieldsElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.94
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17EnumFieldsElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 44
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17EnumFieldsElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17EnumFieldsElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16EnumFieldElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV16EnumFieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.EnumFieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16EnumFieldElementD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16EnumFieldElementD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16EnumFieldElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.95
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16EnumFieldElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 45
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16EnumFieldElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16EnumFieldElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV14MessageElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.MessageElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14MessageElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14MessageElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.96
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14MessageElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 46
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14MessageElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14MessageElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13PacketElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.PacketElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN13PacketElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13PacketElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.97
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13PacketElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 47
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13PacketElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13PacketElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV12ClassElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.ClassElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN12ClassElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12ClassElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.98
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12ClassElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 48
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12ClassElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12ClassElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTV13StructElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.StructElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElementD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN13StructElementD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13StructElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.99
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13StructElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 49
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13StructElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13StructElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElementD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTV12FieldElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %class.FieldElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElementD0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN12FieldElementD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12FieldElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.100
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12FieldElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 50
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12FieldElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN12FieldElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14UnknownElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !428 {
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTV14UnknownElement, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !302
  %2 = getelementptr inbounds %class.UnknownElement, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN10NEDElementD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14UnknownElementD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN14UnknownElementD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14UnknownElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret ptr @.str.101
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14UnknownElement10getTagCodeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret i32 51
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14UnknownElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !301 {
  %3 = tail call noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14UnknownElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !301 {
  tail call void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17NEDElementFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17NEDElementFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17NEDElementFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12NEDException4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK10NEDElement12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDElement12setAttributeEPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin optsize allocsize(0) }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!300}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!35 = !{ptr @_ZN14NedFileElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 14}
!36 = !{ptr @_ZN14NedFileElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 28}
!37 = !{ptr @_ZNK14NedFileElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 12}
!38 = !{ptr @_ZN14NedFileElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 13}
!39 = !{ptr @_ZN14CommentElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 219}
!40 = !{ptr @_ZN14CommentElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 438}
!41 = !{ptr @_ZNK14CommentElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 389}
!42 = !{ptr @_ZN14CommentElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 218}
!43 = !{ptr @_ZNK14CommentElement3dupEv, ptr @_Znwm, i64 9}
!44 = !{ptr @_ZNK14CommentElement3dupEv, ptr @_ZN14CommentElementC2Ev, i64 9}
!45 = !{ptr @_ZNK14CommentElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 18}
!46 = !{ptr @_ZN14PackageElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 1}
!47 = !{ptr @_ZN14PackageElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 1}
!48 = !{ptr @_ZN14ExtendsElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 1}
!49 = !{ptr @_ZN14ExtendsElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 1}
!50 = !{ptr @_ZNK14ExtendsElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 2}
!51 = !{ptr @_ZN20InterfaceNameElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 2}
!52 = !{ptr @_ZN20InterfaceNameElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 2}
!53 = !{ptr @_ZNK20InterfaceNameElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5}
!54 = !{ptr @_ZN19SimpleModuleElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 9}
!55 = !{ptr @_ZN19SimpleModuleElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 9}
!56 = !{ptr @_ZNK19SimpleModuleElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 26}
!57 = !{ptr @_ZN22ModuleInterfaceElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 3}
!58 = !{ptr @_ZN22ModuleInterfaceElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 3}
!59 = !{ptr @_ZNK22ModuleInterfaceElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 4}
!60 = !{ptr @_ZN21CompoundModuleElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 6}
!61 = !{ptr @_ZN21CompoundModuleElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 6}
!62 = !{ptr @_ZNK21CompoundModuleElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 17}
!63 = !{ptr @_ZN14ChannelElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 5}
!64 = !{ptr @_ZN14ChannelElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 5}
!65 = !{ptr @_ZNK14ChannelElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5}
!66 = !{ptr @_ZNK14ChannelElement3dupEv, ptr @_Znwm, i64 1}
!67 = !{ptr @_ZNK14ChannelElement3dupEv, ptr @_ZN14ChannelElementC2Ev, i64 1}
!68 = !{ptr @_ZNK14ChannelElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 1}
!69 = !{ptr @_ZN17ParametersElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 42}
!70 = !{ptr @_ZN17ParametersElementC2Ev, ptr @_ZN10NEDElement13applyDefaultsEv, i64 42}
!71 = !{ptr @_ZNK17ParametersElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 35}
!72 = !{ptr @_ZN17ParametersElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 41}
!73 = !{ptr @_ZNK17ParametersElement3dupEv, ptr @_Znwm, i64 1}
!74 = !{ptr @_ZNK17ParametersElement3dupEv, ptr @_ZN17ParametersElementC2Ev, i64 1}
!75 = !{ptr @_ZN12ParamElement7setTypeEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 63}
!76 = !{ptr @_ZN12ParamElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 72}
!77 = !{ptr @_ZN12ParamElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 144}
!78 = !{ptr @_ZNK12ParamElement12getAttributeEi, ptr @_ZN10NEDElement12enumToStringEiPPKcPii, i64 60}
!79 = !{ptr @_ZNK12ParamElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 120}
!80 = !{ptr @_ZNK12ParamElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 366}
!81 = !{ptr @_ZN12ParamElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToEnumEPKcPS1_Pii, i64 72}
!82 = !{ptr @_ZN12ParamElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 144}
!83 = !{ptr @_ZN12ParamElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 73}
!84 = !{ptr @_ZNK12ParamElement3dupEv, ptr @_Znwm, i64 5}
!85 = !{ptr @_ZNK12ParamElement3dupEv, ptr @_ZN12ParamElementC2Ev, i64 5}
!86 = !{ptr @_ZNK12ParamElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 10}
!87 = !{ptr @_ZN15PropertyElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 59}
!88 = !{ptr @_ZN15PropertyElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 118}
!89 = !{ptr @_ZNK15PropertyElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 49}
!90 = !{ptr @_ZNK15PropertyElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 160}
!91 = !{ptr @_ZN15PropertyElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 58}
!92 = !{ptr @_ZN15PropertyElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 59}
!93 = !{ptr @_ZNK15PropertyElement3dupEv, ptr @_Znwm, i64 3}
!94 = !{ptr @_ZNK15PropertyElement3dupEv, ptr @_ZN15PropertyElementC2Ev, i64 3}
!95 = !{ptr @_ZNK15PropertyElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 6}
!96 = !{ptr @_ZN18PropertyKeyElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 58}
!97 = !{ptr @_ZN18PropertyKeyElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 58}
!98 = !{ptr @_ZNK18PropertyKeyElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5}
!99 = !{ptr @_ZN18PropertyKeyElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 57}
!100 = !{ptr @_ZNK18PropertyKeyElement3dupEv, ptr @_Znwm, i64 3}
!101 = !{ptr @_ZNK18PropertyKeyElement3dupEv, ptr @_ZN18PropertyKeyElementC2Ev, i64 3}
!102 = !{ptr @_ZNK18PropertyKeyElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 3}
!103 = !{ptr @_ZN12GatesElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 19}
!104 = !{ptr @_ZN12GatesElementC2Ev, ptr @_ZN10NEDElement13applyDefaultsEv, i64 19}
!105 = !{ptr @_ZN11GateElement7setTypeEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 32}
!106 = !{ptr @_ZN11GateElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 36}
!107 = !{ptr @_ZN11GateElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 72}
!108 = !{ptr @_ZNK11GateElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 64}
!109 = !{ptr @_ZNK11GateElement12getAttributeEi, ptr @_ZN10NEDElement12enumToStringEiPPKcPii, i64 32}
!110 = !{ptr @_ZNK11GateElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 32}
!111 = !{ptr @_ZN11GateElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 36}
!112 = !{ptr @_ZN11GateElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToEnumEPKcPS1_Pii, i64 35}
!113 = !{ptr @_ZN11GateElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 35}
!114 = !{ptr @_ZN17SubmodulesElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 6}
!115 = !{ptr @_ZN17SubmodulesElementC2Ev, ptr @_ZN10NEDElement13applyDefaultsEv, i64 6}
!116 = !{ptr @_ZN16SubmoduleElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 42}
!117 = !{ptr @_ZN16SubmoduleElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 210}
!118 = !{ptr @_ZNK16SubmoduleElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 167}
!119 = !{ptr @_ZN16SubmoduleElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 167}
!120 = !{ptr @_ZN18ConnectionsElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 6}
!121 = !{ptr @_ZN18ConnectionsElementC2Ev, ptr @_ZN10NEDElement13applyDefaultsEv, i64 6}
!122 = !{ptr @_ZNK18ConnectionsElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 5}
!123 = !{ptr @_ZN18ConnectionsElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 5}
!124 = !{ptr @_ZN17ConnectionElement14setSrcGateSubgEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 46}
!125 = !{ptr @_ZN17ConnectionElement15setDestGateSubgEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 46}
!126 = !{ptr @_ZN17ConnectionElement17setArrowDirectionEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 46}
!127 = !{ptr @_ZN17ConnectionElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 46}
!128 = !{ptr @_ZN17ConnectionElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 368}
!129 = !{ptr @_ZNK17ConnectionElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 310}
!130 = !{ptr @_ZNK17ConnectionElement12getAttributeEi, ptr @_ZN10NEDElement12boolToStringEb, i64 100}
!131 = !{ptr @_ZNK17ConnectionElement12getAttributeEi, ptr @_ZN10NEDElement12enumToStringEiPPKcPii, i64 191}
!132 = !{ptr @_ZN17ConnectionElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 310}
!133 = !{ptr @_ZN17ConnectionElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToBoolEPKc, i64 100}
!134 = !{ptr @_ZN17ConnectionElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToEnumEPKcPS1_Pii, i64 101}
!135 = !{ptr @_ZN18ChannelSpecElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 31}
!136 = !{ptr @_ZN18ChannelSpecElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 93}
!137 = !{ptr @_ZNK18ChannelSpecElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 61}
!138 = !{ptr @_ZN18ChannelSpecElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 92}
!139 = !{ptr @_ZN22ConnectionGroupElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 23}
!140 = !{ptr @_ZN22ConnectionGroupElementC2Ev, ptr @_ZN10NEDElement13applyDefaultsEv, i64 23}
!141 = !{ptr @_ZN11LoopElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 26}
!142 = !{ptr @_ZN11LoopElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 78}
!143 = !{ptr @_ZNK11LoopElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 51}
!144 = !{ptr @_ZN11LoopElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 51}
!145 = !{ptr @_ZN17ExpressionElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 160}
!146 = !{ptr @_ZN17ExpressionElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 160}
!147 = !{ptr @_ZNK17ExpressionElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 73}
!148 = !{ptr @_ZN17ExpressionElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 159}
!149 = !{ptr @_ZNK17ExpressionElement3dupEv, ptr @_Znwm, i64 6}
!150 = !{ptr @_ZNK17ExpressionElement3dupEv, ptr @_ZN17ExpressionElementC2Ev, i64 6}
!151 = !{ptr @_ZNK17ExpressionElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 6}
!152 = !{ptr @_ZN15OperatorElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 37}
!153 = !{ptr @_ZN15OperatorElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 37}
!154 = !{ptr @_ZNK15OperatorElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 36}
!155 = !{ptr @_ZN15FunctionElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 4}
!156 = !{ptr @_ZN15FunctionElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 4}
!157 = !{ptr @_ZNK15FunctionElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 7}
!158 = !{ptr @_ZN12IdentElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 94}
!159 = !{ptr @_ZN12IdentElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 188}
!160 = !{ptr @_ZNK12IdentElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 187}
!161 = !{ptr @_ZN12IdentElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 93}
!162 = !{ptr @_ZN14LiteralElement7setTypeEi, ptr @_ZN10NEDElement12validateEnumEiPPKcPii, i64 152}
!163 = !{ptr @_ZN14LiteralElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 161}
!164 = !{ptr @_ZN14LiteralElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 483}
!165 = !{ptr @_ZNK14LiteralElement12getAttributeEi, ptr @_ZN10NEDElement12enumToStringEiPPKcPii, i64 272}
!166 = !{ptr @_ZNK14LiteralElement12getAttributeEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 3}
!167 = !{ptr @_ZN14LiteralElement12setAttributeEiPKc, ptr @_ZN10NEDElement12stringToEnumEPKcPS1_Pii, i64 1}
!168 = !{ptr @_ZN14LiteralElement12setAttributeEiPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 480}
!169 = !{ptr @_ZNK14LiteralElement3dupEv, ptr @_Znwm, i64 9}
!170 = !{ptr @_ZNK14LiteralElement3dupEv, ptr @_ZN14LiteralElementC2Ev, i64 9}
!171 = !{ptr @_ZNK14LiteralElement3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, i64 27}
!172 = !{ptr @_ZN14UnknownElementC2Ev, ptr @_ZN10NEDElementC2Ev, i64 23}
!173 = !{ptr @_ZN14UnknownElementC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 23}
!174 = !{ptr @_ZN17NEDElementFactory11getInstanceEv, ptr @_Znwm, i64 2}
!175 = !{ptr @_ZN17NEDElementFactory11getInstanceEv, ptr @_ZN17NEDElementFactoryC2Ev, i64 2}
!176 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_Znwm, i64 1133}
!177 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12FilesElementC2Ev, i64 1}
!178 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14NedFileElementC2Ev, i64 1}
!179 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14CommentElementC2Ev, i64 202}
!180 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14PackageElementC2Ev, i64 2}
!181 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN13ImportElementC2Ev, i64 1}
!182 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN19PropertyDeclElementC2Ev, i64 1}
!183 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14ExtendsElementC2Ev, i64 2}
!184 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN20InterfaceNameElementC2Ev, i64 3}
!185 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN19SimpleModuleElementC2Ev, i64 10}
!186 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN22ModuleInterfaceElementC2Ev, i64 4}
!187 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN21CompoundModuleElementC2Ev, i64 7}
!188 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN23ChannelInterfaceElementC2Ev, i64 1}
!189 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14ChannelElementC2Ev, i64 5}
!190 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17ParametersElementC2Ev, i64 40}
!191 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12ParamElementC2Ev, i64 65}
!192 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14PatternElementC2Ev, i64 1}
!193 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN15PropertyElementC2Ev, i64 54}
!194 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN18PropertyKeyElementC2Ev, i64 54}
!195 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12GatesElementC2Ev, i64 19}
!196 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN11GateElementC2Ev, i64 35}
!197 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12TypesElementC2Ev, i64 1}
!198 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17SubmodulesElementC2Ev, i64 7}
!199 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16SubmoduleElementC2Ev, i64 41}
!200 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN18ConnectionsElementC2Ev, i64 7}
!201 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17ConnectionElementC2Ev, i64 45}
!202 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN18ChannelSpecElementC2Ev, i64 31}
!203 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN22ConnectionGroupElementC2Ev, i64 23}
!204 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN11LoopElementC2Ev, i64 26}
!205 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16ConditionElementC2Ev, i64 1}
!206 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17ExpressionElementC2Ev, i64 148}
!207 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN15OperatorElementC2Ev, i64 36}
!208 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN15FunctionElementC2Ev, i64 5}
!209 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12IdentElementC2Ev, i64 91}
!210 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14LiteralElementC2Ev, i64 146}
!211 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14MsgFileElementC2Ev, i64 1}
!212 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16NamespaceElementC2Ev, i64 1}
!213 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16CplusplusElementC2Ev, i64 1}
!214 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17StructDeclElementC2Ev, i64 1}
!215 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16ClassDeclElementC2Ev, i64 1}
!216 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN18MessageDeclElementC2Ev, i64 1}
!217 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17PacketDeclElementC2Ev, i64 1}
!218 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN15EnumDeclElementC2Ev, i64 1}
!219 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN11EnumElementC2Ev, i64 1}
!220 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN17EnumFieldsElementC2Ev, i64 1}
!221 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN16EnumFieldElementC2Ev, i64 1}
!222 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14MessageElementC2Ev, i64 1}
!223 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN13PacketElementC2Ev, i64 1}
!224 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12ClassElementC2Ev, i64 1}
!225 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN13StructElementC2Ev, i64 1}
!226 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12FieldElementC2Ev, i64 1}
!227 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN14UnknownElementC2Ev, i64 1}
!228 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @__cxa_allocate_exception, i64 1}
!229 = !{ptr @_ZN17NEDElementFactory20createElementWithTagEi, ptr @_ZN12NEDExceptionC1EPKcz, i64 1}
!230 = !{ptr @_ZN14NedFileElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 28}
!231 = !{ptr @_ZN14NedFileElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 14}
!232 = !{ptr @_ZNK14NedFileElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 13}
!233 = !{ptr @_ZN14CommentElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 438}
!234 = !{ptr @_ZN14CommentElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 219}
!235 = !{ptr @_ZNK14CommentElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 390}
!236 = !{ptr @_ZN14PackageElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!237 = !{ptr @_ZN14PackageElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 1}
!238 = !{ptr @_ZN14ExtendsElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!239 = !{ptr @_ZN14ExtendsElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 1}
!240 = !{ptr @_ZNK14ExtendsElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 3}
!241 = !{ptr @_ZN20InterfaceNameElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2}
!242 = !{ptr @_ZN20InterfaceNameElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 2}
!243 = !{ptr @_ZNK20InterfaceNameElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 6}
!244 = !{ptr @_ZN19SimpleModuleElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 9}
!245 = !{ptr @_ZN19SimpleModuleElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 9}
!246 = !{ptr @_ZNK19SimpleModuleElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 27}
!247 = !{ptr @_ZN22ModuleInterfaceElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!248 = !{ptr @_ZN22ModuleInterfaceElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 3}
!249 = !{ptr @_ZNK22ModuleInterfaceElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 5}
!250 = !{ptr @_ZN21CompoundModuleElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 6}
!251 = !{ptr @_ZN21CompoundModuleElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 6}
!252 = !{ptr @_ZNK21CompoundModuleElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 18}
!253 = !{ptr @_ZN14ChannelElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 5}
!254 = !{ptr @_ZN14ChannelElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 5}
!255 = !{ptr @_ZNK14ChannelElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 6}
!256 = !{ptr @_ZNK17ParametersElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 36}
!257 = !{ptr @_ZN12ParamElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 144}
!258 = !{ptr @_ZN12ParamElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 72}
!259 = !{ptr @_ZNK12ParamElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 548}
!260 = !{ptr @_ZN15PropertyElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 118}
!261 = !{ptr @_ZN15PropertyElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 59}
!262 = !{ptr @_ZNK15PropertyElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 210}
!263 = !{ptr @_ZN18PropertyKeyElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 58}
!264 = !{ptr @_ZN18PropertyKeyElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 58}
!265 = !{ptr @_ZNK18PropertyKeyElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 6}
!266 = !{ptr @_ZN11GateElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 72}
!267 = !{ptr @_ZN11GateElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 36}
!268 = !{ptr @_ZNK11GateElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 128}
!269 = !{ptr @_ZN16SubmoduleElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 210}
!270 = !{ptr @_ZN16SubmoduleElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 42}
!271 = !{ptr @_ZNK16SubmoduleElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 168}
!272 = !{ptr @_ZNK18ConnectionsElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 6}
!273 = !{ptr @_ZN17ConnectionElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 368}
!274 = !{ptr @_ZN17ConnectionElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 46}
!275 = !{ptr @_ZNK17ConnectionElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 600}
!276 = !{ptr @_ZN17ConnectionElement12setAttributeEPKcS1_, ptr @_ZN10NEDElement12setAttributeEPKcS1_, i64 48}
!277 = !{ptr @_ZN18ChannelSpecElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 93}
!278 = !{ptr @_ZN18ChannelSpecElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 31}
!279 = !{ptr @_ZNK18ChannelSpecElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 62}
!280 = !{ptr @_ZN11LoopElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 78}
!281 = !{ptr @_ZN11LoopElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 26}
!282 = !{ptr @_ZNK11LoopElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 52}
!283 = !{ptr @_ZN17ExpressionElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 160}
!284 = !{ptr @_ZN17ExpressionElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 160}
!285 = !{ptr @_ZNK17ExpressionElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 74}
!286 = !{ptr @_ZN15OperatorElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 37}
!287 = !{ptr @_ZN15OperatorElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 37}
!288 = !{ptr @_ZNK15OperatorElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 37}
!289 = !{ptr @_ZN15FunctionElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 4}
!290 = !{ptr @_ZN15FunctionElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 4}
!291 = !{ptr @_ZNK15FunctionElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 8}
!292 = !{ptr @_ZN12IdentElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 188}
!293 = !{ptr @_ZN12IdentElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 94}
!294 = !{ptr @_ZNK12IdentElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 188}
!295 = !{ptr @_ZN14LiteralElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 483}
!296 = !{ptr @_ZN14LiteralElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 161}
!297 = !{ptr @_ZNK14LiteralElement12getAttributeEPKc, ptr @_ZNK10NEDElement12getAttributeEPKc, i64 276}
!298 = !{ptr @_ZN14UnknownElementD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 23}
!299 = !{ptr @_ZN14UnknownElementD2Ev, ptr @_ZN10NEDElementD2Ev, i64 23}
!300 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!301 = !{!"function_entry_count", i64 0}
!302 = !{!303, !303, i64 0}
!303 = !{!"vtable pointer", !304, i64 0}
!304 = !{!"Simple C++ TBAA"}
!305 = !{!"function_entry_count", i64 14}
!306 = !{!"function_entry_count", i64 27}
!307 = !{!"function_entry_count", i64 13}
!308 = !{!"branch_weights", i32 1, i32 14, i32 1}
!309 = !{!"branch_weights", i32 1, i32 1, i32 15}
!310 = !{!"function_entry_count", i64 28}
!311 = !{!"function_entry_count", i64 31218}
!312 = !{!"function_entry_count", i64 219}
!313 = !{!"function_entry_count", i64 609}
!314 = !{!"function_entry_count", i64 390}
!315 = !{!"branch_weights", i32 1, i32 391, i32 1}
!316 = !{!"branch_weights", i32 1, i32 1, i32 220}
!317 = !{!"function_entry_count", i64 438}
!318 = !{!"function_entry_count", i64 9}
!319 = !{!"function_entry_count", i64 1}
!320 = !{!321, !330, i64 144}
!321 = !{!"_ZTS19PropertyDeclElement", !322, i64 0, !325, i64 112, !330, i64 144}
!322 = !{!"_ZTS10NEDElement", !323, i64 8, !325, i64 16, !328, i64 48, !327, i64 64, !327, i64 72, !327, i64 80, !327, i64 88, !327, i64 96, !327, i64 104}
!323 = !{!"long", !324, i64 0}
!324 = !{!"omnipotent char", !304, i64 0}
!325 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !326, i64 0, !323, i64 8, !324, i64 16}
!326 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !327, i64 0}
!327 = !{!"any pointer", !324, i64 0}
!328 = !{!"_ZTS15NEDSourceRegion", !329, i64 0, !329, i64 4, !329, i64 8, !329, i64 12}
!329 = !{!"int", !324, i64 0}
!330 = !{!"bool", !324, i64 0}
!331 = !{i8 0, i8 2}
!332 = !{}
!333 = !{!"function_entry_count", i64 4}
!334 = !{!"function_entry_count", i64 3}
!335 = !{!"branch_weights", i32 4, i32 1}
!336 = !{!"function_entry_count", i64 2}
!337 = !{!"function_entry_count", i64 8}
!338 = !{!"function_entry_count", i64 6}
!339 = !{!"branch_weights", i32 7, i32 1}
!340 = !{!"function_entry_count", i64 36}
!341 = !{!"branch_weights", i32 28, i32 1}
!342 = !{!"function_entry_count", i64 5}
!343 = !{!"branch_weights", i32 6, i32 1}
!344 = !{!"function_entry_count", i64 24}
!345 = !{!"function_entry_count", i64 18}
!346 = !{!"branch_weights", i32 19, i32 1}
!347 = !{!"function_entry_count", i64 11}
!348 = !{!"function_entry_count", i64 42}
!349 = !{!350, !330, i64 112}
!350 = !{!"_ZTS17ParametersElement", !322, i64 0, !330, i64 112}
!351 = !{!"function_entry_count", i64 78}
!352 = !{!"branch_weights", i32 37, i32 1}
!353 = !{!"branch_weights", i32 43, i32 1}
!354 = !{!"function_entry_count", i64 63}
!355 = !{!356, !329, i64 112}
!356 = !{!"_ZTS12ParamElement", !322, i64 0, !329, i64 112, !330, i64 116, !325, i64 120, !325, i64 152, !330, i64 184}
!357 = !{!"function_entry_count", i64 72}
!358 = !{!356, !330, i64 116}
!359 = !{!356, !330, i64 184}
!360 = !{!"function_entry_count", i64 620}
!361 = !{!"function_entry_count", i64 1584}
!362 = !{!"function_entry_count", i64 548}
!363 = !{!"branch_weights", i32 1, i32 61, i32 61, i32 369, i32 1, i32 61}
!364 = !{!"function_entry_count", i64 288}
!365 = !{!"branch_weights", i32 1, i32 73, i32 73, i32 1, i32 73, i32 73}
!366 = !{!"function_entry_count", i64 360}
!367 = !{!"function_entry_count", i64 55}
!368 = !{!369, !330, i64 176}
!369 = !{!"_ZTS14PatternElement", !322, i64 0, !325, i64 112, !325, i64 144, !330, i64 176}
!370 = !{!"function_entry_count", i64 59}
!371 = !{!372, !330, i64 112}
!372 = !{!"_ZTS15PropertyElement", !322, i64 0, !330, i64 112, !325, i64 120, !325, i64 152}
!373 = !{!"function_entry_count", i64 269}
!374 = !{!"function_entry_count", i64 420}
!375 = !{!"function_entry_count", i64 210}
!376 = !{!"branch_weights", i32 1, i32 50, i32 113, i32 50}
!377 = !{!"function_entry_count", i64 118}
!378 = !{!"branch_weights", i32 1, i32 60, i32 1, i32 60}
!379 = !{!"function_entry_count", i64 177}
!380 = !{!"function_entry_count", i64 58}
!381 = !{!"function_entry_count", i64 64}
!382 = !{!"branch_weights", i32 59, i32 1}
!383 = !{!"function_entry_count", i64 19}
!384 = !{!"function_entry_count", i64 32}
!385 = !{!386, !329, i64 144}
!386 = !{!"_ZTS11GateElement", !322, i64 0, !325, i64 112, !329, i64 144, !330, i64 148, !325, i64 152}
!387 = !{!386, !330, i64 148}
!388 = !{!"function_entry_count", i64 164}
!389 = !{!"function_entry_count", i64 224}
!390 = !{!"function_entry_count", i64 128}
!391 = !{!"branch_weights", i32 1, i32 65, i32 33, i32 33, i32 1}
!392 = !{!"function_entry_count", i64 108}
!393 = !{!"branch_weights", i32 1, i32 1, i32 37, i32 37, i32 37}
!394 = !{!"function_entry_count", i64 144}
!395 = !{!"function_entry_count", i64 21310}
!396 = !{!"function_entry_count", i64 5471}
!397 = !{!"function_entry_count", i64 294}
!398 = !{!"function_entry_count", i64 168}
!399 = !{!"branch_weights", i32 1, i32 85, i32 43, i32 43, i32 1, i32 1}
!400 = !{!"branch_weights", i32 1, i32 1, i32 43, i32 43, i32 43, i32 43}
!401 = !{!"function_entry_count", i64 21452}
!402 = !{!403, !330, i64 112}
!403 = !{!"_ZTS18ConnectionsElement", !322, i64 0, !330, i64 112}
!404 = !{!"function_entry_count", i64 12}
!405 = !{!"function_entry_count", i64 46}
!406 = !{!407, !329, i64 248}
!407 = !{!"_ZTS17ConnectionElement", !322, i64 0, !325, i64 112, !325, i64 144, !325, i64 176, !330, i64 208, !325, i64 216, !329, i64 248, !325, i64 256, !325, i64 288, !325, i64 320, !330, i64 352, !325, i64 360, !329, i64 392, !329, i64 396}
!408 = !{!407, !329, i64 392}
!409 = !{!407, !329, i64 396}
!410 = !{!407, !330, i64 208}
!411 = !{!407, !330, i64 352}
!412 = !{!"function_entry_count", i64 694}
!413 = !{!"function_entry_count", i64 4764}
!414 = !{!"function_entry_count", i64 600}
!415 = !{!"branch_weights", i32 1, i32 51, i32 5, i32 97, i32 51, i32 5, i32 51, i32 51, i32 5, i32 97, i32 51, i32 5, i32 51, i32 93}
!416 = !{!"function_entry_count", i64 508}
!417 = !{!"branch_weights", i32 1, i32 51, i32 51, i32 5, i32 51, i32 51, i32 51, i32 51, i32 51, i32 5, i32 51, i32 51, i32 51, i32 1}
!418 = !{!"function_entry_count", i64 598}
!419 = !{!329, !329, i64 0}
!420 = !{!"function_entry_count", i64 16103}
!421 = !{!"function_entry_count", i64 65602}
!422 = !{!"function_entry_count", i64 31}
!423 = !{!"function_entry_count", i64 93}
!424 = !{!"function_entry_count", i64 62}
!425 = !{!"branch_weights", i32 1, i32 32, i32 32, i32 1}
!426 = !{!"branch_weights", i32 1, i32 32, i32 32, i32 32}
!427 = !{!"branch_weights", i32 96, i32 1}
!428 = !{!"function_entry_count", i64 23}
!429 = !{!"function_entry_count", i64 8851}
!430 = !{!"function_entry_count", i64 26}
!431 = !{!"function_entry_count", i64 52}
!432 = !{!"branch_weights", i32 1, i32 53, i32 1, i32 1}
!433 = !{!"branch_weights", i32 1, i32 1, i32 27, i32 27}
!434 = !{!"function_entry_count", i64 160}
!435 = !{!"function_entry_count", i64 234}
!436 = !{!"function_entry_count", i64 74}
!437 = !{!"branch_weights", i32 75, i32 1}
!438 = !{!"branch_weights", i32 161, i32 1}
!439 = !{!"function_entry_count", i64 37}
!440 = !{!"branch_weights", i32 38, i32 1}
!441 = !{!"branch_weights", i32 9, i32 1}
!442 = !{!"function_entry_count", i64 94}
!443 = !{!"function_entry_count", i64 282}
!444 = !{!"function_entry_count", i64 376}
!445 = !{!"function_entry_count", i64 188}
!446 = !{!"branch_weights", i32 1, i32 1, i32 189}
!447 = !{!"branch_weights", i32 1, i32 95, i32 1}
!448 = !{!"function_entry_count", i64 152}
!449 = !{!450, !329, i64 112}
!450 = !{!"_ZTS14LiteralElement", !322, i64 0, !329, i64 112, !325, i64 120, !325, i64 152, !325, i64 184}
!451 = !{!"function_entry_count", i64 161}
!452 = !{!"function_entry_count", i64 437}
!453 = !{!"function_entry_count", i64 276}
!454 = !{!"branch_weights", i32 1, i32 277, i32 1, i32 1, i32 1}
!455 = !{!"function_entry_count", i64 483}
!456 = !{!"branch_weights", i32 1, i32 1, i32 162, i32 162, i32 162}
!457 = !{!"function_entry_count", i64 644}
!458 = !{!459, !330, i64 144}
!459 = !{!"_ZTS16ClassDeclElement", !322, i64 0, !325, i64 112, !330, i64 144, !325, i64 152}
!460 = !{!461, !330, i64 176}
!461 = !{!"_ZTS12FieldElement", !322, i64 0, !325, i64 112, !325, i64 144, !330, i64 176, !330, i64 177, !330, i64 178, !325, i64 184, !325, i64 216, !325, i64 248}
!462 = !{!461, !330, i64 177}
!463 = !{!461, !330, i64 178}
!464 = !{!"function_entry_count", i64 1131}
!465 = !{!327, !327, i64 0}
!466 = !{!"branch_weights", i32 2, i32 1131}
!467 = !{!324, !324, i64 0}
!468 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 211, i32 2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 4, i32 7, i32 1, i32 5, i32 42, i32 68, i32 1, i32 57, i32 56, i32 20, i32 37, i32 1, i32 7, i32 43, i32 7, i32 47, i32 32, i32 24, i32 27, i32 1, i32 155, i32 38, i32 5, i32 95, i32 153, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!469 = !{!"function_entry_count", i64 62540}
!470 = !{!"function_entry_count", i64 386221}
!471 = !{!"function_entry_count", i64 19546}
!472 = !{!"function_entry_count", i64 782}
!473 = !{!"function_entry_count", i64 257}
!474 = !{!"function_entry_count", i64 277}
!475 = !{!"function_entry_count", i64 191142}
!476 = !{!"function_entry_count", i64 22084}
!477 = !{!"function_entry_count", i64 223017}
!478 = !{!"function_entry_count", i64 161171}
!479 = !{!"function_entry_count", i64 64021}
!480 = !{!"function_entry_count", i64 215}
!481 = !{!"function_entry_count", i64 85764}
!482 = !{!"function_entry_count", i64 153241}
!483 = !{!"function_entry_count", i64 16478}
!484 = !{!"function_entry_count", i64 21593}
!485 = !{!"function_entry_count", i64 11000}
!486 = !{!"function_entry_count", i64 134766}
!487 = !{!"function_entry_count", i64 48}
!488 = !{!"function_entry_count", i64 34466}
!489 = !{!"function_entry_count", i64 19540}
!490 = !{!"function_entry_count", i64 11892}
!491 = !{!"function_entry_count", i64 363533}
!492 = !{!"function_entry_count", i64 185}
!493 = !{!"function_entry_count", i64 20}
!494 = !{!"function_entry_count", i64 461}
!495 = !{!"function_entry_count", i64 634}
