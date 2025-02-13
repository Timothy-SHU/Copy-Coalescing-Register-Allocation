; ModuleID = 'simulator/neddtdvalidator.cc'
source_filename = "simulator/neddtdvalidator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.NEDDTDValidatorBase::Choice" = type { [20 x i32], i8 }

$_ZN16NEDValidatorBaseD2Ev = comdat any

$_ZN15NEDDTDValidatorD0Ev = comdat any

$_ZTS19NEDDTDValidatorBase = comdat any

$_ZTI19NEDDTDValidatorBase = comdat any

@__const._ZN15NEDDTDValidator15validateElementEP12FilesElement.tags = private unnamed_addr constant [3 x i32] [i32 2, i32 35, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP14NedFileElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ [9 x i32], [11 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ [9 x i32], [11 x i32] }>, i8, [3 x i8] } { <{ [9 x i32], [11 x i32] }> <{ [9 x i32] [i32 4, i32 5, i32 6, i32 17, i32 9, i32 11, i32 10, i32 13, i32 12], [11 x i32] zeroinitializer }>, i8 42, [3 x i8] undef } }>, align 16
@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"locid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"import-spec\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP19PropertyDeclElement.tags = private unnamed_addr constant [4 x i32] [i32 3, i32 18, i32 17, i32 0], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"is-array\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement.tags = private unnamed_addr constant [6 x i32] [i32 3, i32 7, i32 8, i32 14, i32 19, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement.mult = private unnamed_addr constant [6 x i8] c"*?*??\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement.tags = private unnamed_addr constant [5 x i32] [i32 3, i32 7, i32 14, i32 19, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement.tags = private unnamed_addr constant [9 x i32] [i32 3, i32 7, i32 8, i32 14, i32 19, i32 21, i32 22, i32 24, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement.mult = private unnamed_addr constant [9 x i8] c"*?*?????\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP23ChannelInterfaceElement.tags = private unnamed_addr constant [4 x i32] [i32 3, i32 7, i32 14, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP14ChannelElement.tags = private unnamed_addr constant [5 x i32] [i32 3, i32 7, i32 8, i32 14, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP14ChannelElement.mult = private unnamed_addr constant [5 x i8] c"*?*?\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"is-implicit\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const._ZN15NEDDTDValidator15validateElementEP12ParamElement.vals0 = private unnamed_addr constant [6 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"is-volatile\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"is-default\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP15PropertyElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 18, i32 0], align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP18PropertyKeyElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 34, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP12GatesElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 20, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP11GateElement.tags = private unnamed_addr constant [4 x i32] [i32 3, i32 30, i32 17, i32 0], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP11GateElement.vals1 = private unnamed_addr constant [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.13], align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"is-vector\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP12TypesElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, i32, i32, [15 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, i32, i32, i32, [15 x i32] }>, i8, [3 x i8] } { <{ i32, i32, i32, i32, i32, [15 x i32] }> <{ i32 13, i32 12, i32 9, i32 11, i32 10, [15 x i32] zeroinitializer }>, i8 42, [3 x i8] undef } }>, align 16
@__const._ZN15NEDDTDValidator15validateElementEP17SubmodulesElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 23, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP16SubmoduleElement.tags = private unnamed_addr constant [5 x i32] [i32 3, i32 30, i32 14, i32 19, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP16SubmoduleElement.mult = private unnamed_addr constant [5 x i8] c"**??\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"allow-unconnected\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 30, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 26, [19 x i32] zeroinitializer }>, i8 63, [3 x i8] undef }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } { <{ i32, i32, [18 x i32] }> <{ i32 28, i32 29, [18 x i32] zeroinitializer }>, i8 42, [3 x i8] undef } }>, align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"src-module\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"src-gate\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"src-gate-plusplus\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"src-gate-subg\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"dest-module\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"dest-gate\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"dest-gate-plusplus\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.vals11 = private unnamed_addr constant [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.13], align 16
@.str.33 = private unnamed_addr constant [15 x i8] c"dest-gate-subg\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"arrow-direction\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"l2r\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"r2l\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"bidir\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.vals12 = private unnamed_addr constant [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], align 16
@__const._ZN15NEDDTDValidator15validateElementEP18ChannelSpecElement.tags = private unnamed_addr constant [4 x i32] [i32 3, i32 30, i32 14, i32 0], align 16
@__const._ZN15NEDDTDValidator15validateElementEP22ConnectionGroupElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] }, { <{ i32, [19 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } { <{ i32, i32, [18 x i32] }> <{ i32 28, i32 29, [18 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 25, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef } }>, align 16
@.str.38 = private unnamed_addr constant [11 x i8] c"param-name\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP16ConditionElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 30, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP17ExpressionElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } { <{ i32, i32, i32, i32, [16 x i32] }> <{ i32 31, i32 32, i32 33, i32 34, [16 x i32] zeroinitializer }>, i8 49, [3 x i8] undef } }>, align 16
@__const._ZN15NEDDTDValidator15validateElementEP15OperatorElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } { <{ i32, i32, i32, i32, [16 x i32] }> <{ i32 31, i32 32, i32 33, i32 34, [16 x i32] zeroinitializer }>, i8 43, [3 x i8] undef } }>, align 16
@__const._ZN15NEDDTDValidator15validateElementEP15FunctionElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } { <{ i32, i32, i32, i32, [16 x i32] }> <{ i32 31, i32 32, i32 33, i32 34, [16 x i32] zeroinitializer }>, i8 42, [3 x i8] undef } }>, align 16
@__const._ZN15NEDDTDValidator15validateElementEP12IdentElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, { <{ i32, i32, i32, i32, [16 x i32] }>, i8, [3 x i8] } { <{ i32, i32, i32, i32, [16 x i32] }> <{ i32 31, i32 32, i32 33, i32 34, [16 x i32] zeroinitializer }>, i8 63, [3 x i8] undef } }>, align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP14LiteralElement.vals0 = private unnamed_addr constant [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.39], align 16
@__const._ZN15NEDDTDValidator15validateElementEP14MsgFileElement.choices = private unnamed_addr constant <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, %"struct.NEDDTDValidatorBase::Choice" }> <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] } { <{ i32, [19 x i32] }> <{ i32 3, [19 x i32] zeroinitializer }>, i8 42, [3 x i8] undef }, %"struct.NEDDTDValidatorBase::Choice" { [20 x i32] [i32 36, i32 6, i32 17, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 49, i32 48, i32 46, i32 47, i32 43, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i8 42 } }>, align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"is-cobject\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"extends-name\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP11EnumElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 44, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP11EnumElement.mult = private unnamed_addr constant [3 x i8] c"*?\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.tags = private unnamed_addr constant [3 x i32] [i32 3, i32 45, i32 0], align 4
@__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"is-abstract\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"is-readonly\00", align 1
@__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4 = private unnamed_addr constant [2 x ptr] [ptr @.str.4, ptr @.str.5], align 16
@.str.45 = private unnamed_addr constant [10 x i8] c"enum-name\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@_ZTV15NEDDTDValidator = dso_local unnamed_addr constant { [57 x ptr] } { [57 x ptr] [ptr null, ptr @_ZTI15NEDDTDValidator, ptr @_ZN16NEDValidatorBaseD2Ev, ptr @_ZN15NEDDTDValidatorD0Ev, ptr @_ZN16NEDValidatorBase8validateEP10NEDElement, ptr @_ZN16NEDValidatorBase15validateElementEP10NEDElement, ptr @_ZN15NEDDTDValidator15validateElementEP12FilesElement, ptr @_ZN15NEDDTDValidator15validateElementEP14NedFileElement, ptr @_ZN15NEDDTDValidator15validateElementEP14CommentElement, ptr @_ZN15NEDDTDValidator15validateElementEP14PackageElement, ptr @_ZN15NEDDTDValidator15validateElementEP13ImportElement, ptr @_ZN15NEDDTDValidator15validateElementEP19PropertyDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP14ExtendsElement, ptr @_ZN15NEDDTDValidator15validateElementEP20InterfaceNameElement, ptr @_ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement, ptr @_ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement, ptr @_ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement, ptr @_ZN15NEDDTDValidator15validateElementEP23ChannelInterfaceElement, ptr @_ZN15NEDDTDValidator15validateElementEP14ChannelElement, ptr @_ZN15NEDDTDValidator15validateElementEP17ParametersElement, ptr @_ZN15NEDDTDValidator15validateElementEP12ParamElement, ptr @_ZN15NEDDTDValidator15validateElementEP14PatternElement, ptr @_ZN15NEDDTDValidator15validateElementEP15PropertyElement, ptr @_ZN15NEDDTDValidator15validateElementEP18PropertyKeyElement, ptr @_ZN15NEDDTDValidator15validateElementEP12GatesElement, ptr @_ZN15NEDDTDValidator15validateElementEP11GateElement, ptr @_ZN15NEDDTDValidator15validateElementEP12TypesElement, ptr @_ZN15NEDDTDValidator15validateElementEP17SubmodulesElement, ptr @_ZN15NEDDTDValidator15validateElementEP16SubmoduleElement, ptr @_ZN15NEDDTDValidator15validateElementEP18ConnectionsElement, ptr @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement, ptr @_ZN15NEDDTDValidator15validateElementEP18ChannelSpecElement, ptr @_ZN15NEDDTDValidator15validateElementEP22ConnectionGroupElement, ptr @_ZN15NEDDTDValidator15validateElementEP11LoopElement, ptr @_ZN15NEDDTDValidator15validateElementEP16ConditionElement, ptr @_ZN15NEDDTDValidator15validateElementEP17ExpressionElement, ptr @_ZN15NEDDTDValidator15validateElementEP15OperatorElement, ptr @_ZN15NEDDTDValidator15validateElementEP15FunctionElement, ptr @_ZN15NEDDTDValidator15validateElementEP12IdentElement, ptr @_ZN15NEDDTDValidator15validateElementEP14LiteralElement, ptr @_ZN15NEDDTDValidator15validateElementEP14MsgFileElement, ptr @_ZN15NEDDTDValidator15validateElementEP16NamespaceElement, ptr @_ZN15NEDDTDValidator15validateElementEP16CplusplusElement, ptr @_ZN15NEDDTDValidator15validateElementEP17StructDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP16ClassDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP18MessageDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP17PacketDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP15EnumDeclElement, ptr @_ZN15NEDDTDValidator15validateElementEP11EnumElement, ptr @_ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement, ptr @_ZN15NEDDTDValidator15validateElementEP16EnumFieldElement, ptr @_ZN15NEDDTDValidator15validateElementEP14MessageElement, ptr @_ZN15NEDDTDValidator15validateElementEP13PacketElement, ptr @_ZN15NEDDTDValidator15validateElementEP12ClassElement, ptr @_ZN15NEDDTDValidator15validateElementEP13StructElement, ptr @_ZN15NEDDTDValidator15validateElementEP12FieldElement, ptr @_ZN15NEDDTDValidator15validateElementEP14UnknownElement] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15NEDDTDValidator = dso_local constant [18 x i8] c"15NEDDTDValidator\00", align 1
@_ZTS19NEDDTDValidatorBase = linkonce_odr dso_local constant [22 x i8] c"19NEDDTDValidatorBase\00", comdat, align 1
@_ZTI16NEDValidatorBase = external constant ptr
@_ZTI19NEDDTDValidatorBase = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19NEDDTDValidatorBase, ptr @_ZTI16NEDValidatorBase }, comdat, align 8
@_ZTI15NEDDTDValidator = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15NEDDTDValidator, ptr @_ZTI19NEDDTDValidatorBase }, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12FilesElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP12FilesElement.tags, i64 12, i1 false)
  call void @_ZN19NEDDTDValidatorBase11checkChoiceEP10NEDElementPic(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i8 noundef signext 42) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase11checkChoiceEP10NEDElementPic(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14NedFileElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !101 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP14NedFileElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14CommentElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !102 {
  tail call void @_ZN19NEDDTDValidatorBase10checkEmptyEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #8
  tail call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.1) #8
  tail call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase10checkEmptyEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14PackageElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP13ImportElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP19PropertyDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP19PropertyDeclElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 2763306, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14ExtendsElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !103 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP20InterfaceNameElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !104 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !105 {
  %3 = alloca [6 x i32], align 16
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement.tags, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @__const._ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement.mult, i64 6, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !103 {
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement.tags, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %4, ptr noundef nonnull align 1 dereferenceable(5) @__const._ZN15NEDDTDValidator15validateElementEP16SubmoduleElement.mult, i64 5, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !106 {
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %3, ptr noundef nonnull align 16 dereferenceable(36) @__const._ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement.tags, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @__const._ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement.mult, i64 9, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP23ChannelInterfaceElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP23ChannelInterfaceElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 4139562, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14ChannelElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !103 {
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN15NEDDTDValidator15validateElementEP14ChannelElement.tags, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %4, ptr noundef nonnull align 1 dereferenceable(5) @__const._ZN15NEDDTDValidator15validateElementEP14ChannelElement.mult, i64 5, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17ParametersElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !107 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %5 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %5, align 16
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, [17 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 17, ptr %6, align 4
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, [17 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 15, ptr %7, align 8
  %8 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, [17 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 2
  store i32 16, ptr %8, align 4
  %9 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, i32, [17 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %9, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12ParamElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !108 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  %5 = alloca [6 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP11GateElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 2768682, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 16 dereferenceable(48) @__const._ZN15NEDDTDValidator15validateElementEP12ParamElement.vals0, i64 48, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14PatternElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP11GateElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 2768682, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.17) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP15PropertyElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !109 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP15PropertyElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP18PropertyKeyElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !110 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP18PropertyKeyElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12GatesElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !111 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP12GatesElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP11GateElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !112 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP11GateElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 2768682, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN15NEDDTDValidator15validateElementEP11GateElement.vals1, i64 32, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12TypesElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP12TypesElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17SubmodulesElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !106 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP17SubmodulesElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16SubmoduleElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !113 {
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN15NEDDTDValidator15validateElementEP16SubmoduleElement.tags, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %4, ptr noundef nonnull align 1 dereferenceable(5) @__const._ZN15NEDDTDValidator15validateElementEP16SubmoduleElement.mult, i64 5, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP18ConnectionsElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !106 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %5 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %5, align 16
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 25, ptr %6, align 4
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 27, ptr %7, align 8
  %8 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %8, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %4, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !114 {
  %3 = alloca [4 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [3 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %3, ptr noundef nonnull align 16 dereferenceable(336) @__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.choices, i64 336, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.24) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.25) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.25) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %4, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.vals11, i64 24, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %5, i32 noundef 3) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.30) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.31) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.31) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.vals11, i64 24, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %7, i32 noundef 3) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.34) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN15NEDDTDValidator15validateElementEP17ConnectionElement.vals12, i64 24, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %8, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP18ChannelSpecElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !115 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP18ChannelSpecElement.tags, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 4139562, ptr %4, align 4
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP22ConnectionGroupElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !116 {
  %3 = alloca [3 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %3, ptr noundef nonnull align 16 dereferenceable(252) @__const._ZN15NEDDTDValidator15validateElementEP22ConnectionGroupElement.choices, i64 252, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP11LoopElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !117 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP16ConditionElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.38) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.38) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16ConditionElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP16ConditionElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP11EnumElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17ExpressionElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !118 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP17ExpressionElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP15OperatorElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !119 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP15OperatorElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP15FunctionElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !120 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP15FunctionElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12IdentElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !121 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP12IdentElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14LiteralElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !122 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca [5 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.14) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %5, ptr noundef nonnull align 16 dereferenceable(40) @__const._ZN15NEDDTDValidator15validateElementEP14LiteralElement.vals0, i64 40, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14MsgFileElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, ptr noundef nonnull align 16 dereferenceable(168) @__const._ZN15NEDDTDValidator15validateElementEP14MsgFileElement.choices, i64 168, i1 false)
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16NamespaceElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16CplusplusElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.40) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17StructDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16ClassDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP18MessageDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17PacketDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP15EnumDeclElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP11EnumElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP11EnumElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP11EnumElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.tags, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN15NEDDTDValidator15validateElementEP17EnumFieldsElement.mult, i64 3, i1 false)
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP16EnumFieldElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14MessageElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %4 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %4, align 16
  %5 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 50, ptr %6, align 8
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %7, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP13PacketElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %4 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %4, align 16
  %5 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 50, ptr %6, align 8
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %7, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12ClassElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %4 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %4, align 16
  %5 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 50, ptr %6, align 8
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %7, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP13StructElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x %"struct.NEDDTDValidatorBase::Choice"], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  store i32 3, ptr %3, align 16
  %4 = getelementptr inbounds { <{ i32, [19 x i32] }>, i8, [3 x i8] }, ptr %3, i64 0, i32 1
  store i8 42, ptr %4, align 16
  %5 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 0, i32 1
  store i32 50, ptr %6, align 8
  %7 = getelementptr inbounds <{ { <{ i32, [19 x i32] }>, i8, [3 x i8] }, { <{ i32, i32, [18 x i32] }>, i8, [3 x i8] } }>, ptr %3, i64 0, i32 1, i32 1
  store i8 42, ptr %7, align 4
  call void @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP12FieldElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 3, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 42, ptr %4, align 2
  call void @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN15NEDDTDValidator15validateElementEP12FieldElement.vals4, i64 16, i1 false)
  call void @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.45) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDDTDValidator15validateElementEP14UnknownElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !100 {
  tail call void @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull @.str.46) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16NEDValidatorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !117 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15NEDDTDValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN16NEDValidatorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN16NEDValidatorBase8validateEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN16NEDValidatorBase15validateElementEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!99}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!35 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14NedFileElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 13}
!36 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14NedFileElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 13}
!37 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14CommentElement, ptr @_ZN19NEDDTDValidatorBase10checkEmptyEP10NEDElement, i64 195}
!38 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14CommentElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 195}
!39 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14CommentElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 195}
!40 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14ExtendsElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 1}
!41 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14ExtendsElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 1}
!42 = !{ptr @_ZN15NEDDTDValidator15validateElementEP20InterfaceNameElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 2}
!43 = !{ptr @_ZN15NEDDTDValidator15validateElementEP20InterfaceNameElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 2}
!44 = !{ptr @_ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 9}
!45 = !{ptr @_ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 9}
!46 = !{ptr @_ZN15NEDDTDValidator15validateElementEP19SimpleModuleElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 9}
!47 = !{ptr @_ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 1}
!48 = !{ptr @_ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 1}
!49 = !{ptr @_ZN15NEDDTDValidator15validateElementEP22ModuleInterfaceElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 1}
!50 = !{ptr @_ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 6}
!51 = !{ptr @_ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 6}
!52 = !{ptr @_ZN15NEDDTDValidator15validateElementEP21CompoundModuleElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 6}
!53 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14ChannelElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 1}
!54 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14ChannelElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 1}
!55 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14ChannelElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 1}
!56 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ParametersElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 36}
!57 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ParametersElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 36}
!58 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12ParamElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 60}
!59 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12ParamElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 180}
!60 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12ParamElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 60}
!61 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12ParamElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 60}
!62 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15PropertyElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 49}
!63 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15PropertyElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 49}
!64 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15PropertyElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 49}
!65 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15PropertyElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 98}
!66 = !{ptr @_ZN15NEDDTDValidator15validateElementEP18PropertyKeyElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 48}
!67 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12GatesElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 17}
!68 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11GateElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 32}
!69 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11GateElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 32}
!70 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11GateElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 32}
!71 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11GateElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 64}
!72 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17SubmodulesElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 6}
!73 = !{ptr @_ZN15NEDDTDValidator15validateElementEP16SubmoduleElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 42}
!74 = !{ptr @_ZN15NEDDTDValidator15validateElementEP16SubmoduleElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 42}
!75 = !{ptr @_ZN15NEDDTDValidator15validateElementEP16SubmoduleElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 42}
!76 = !{ptr @_ZN15NEDDTDValidator15validateElementEP18ConnectionsElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 6}
!77 = !{ptr @_ZN15NEDDTDValidator15validateElementEP18ConnectionsElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 6}
!78 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 46}
!79 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 184}
!80 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 138}
!81 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ConnectionElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 230}
!82 = !{ptr @_ZN15NEDDTDValidator15validateElementEP18ChannelSpecElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 31}
!83 = !{ptr @_ZN15NEDDTDValidator15validateElementEP22ConnectionGroupElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 23}
!84 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11LoopElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 26}
!85 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11LoopElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 26}
!86 = !{ptr @_ZN15NEDDTDValidator15validateElementEP11LoopElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 26}
!87 = !{ptr @_ZN15NEDDTDValidator15validateElementEP17ExpressionElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 147}
!88 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15OperatorElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 37}
!89 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15OperatorElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 37}
!90 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15FunctionElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 4}
!91 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15FunctionElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 4}
!92 = !{ptr @_ZN15NEDDTDValidator15validateElementEP15FunctionElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 4}
!93 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12IdentElement, ptr @_ZN19NEDDTDValidatorBase17checkSeqOfChoicesEP10NEDElementPNS_6ChoiceEi, i64 94}
!94 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12IdentElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 94}
!95 = !{ptr @_ZN15NEDDTDValidator15validateElementEP12IdentElement, ptr @_ZN19NEDDTDValidatorBase18checkNameAttributeEP10NEDElementPKc, i64 94}
!96 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14LiteralElement, ptr @_ZN19NEDDTDValidatorBase13checkSequenceEP10NEDElementPiPc, i64 138}
!97 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14LiteralElement, ptr @_ZN19NEDDTDValidatorBase22checkRequiredAttributeEP10NEDElementPKc, i64 138}
!98 = !{ptr @_ZN15NEDDTDValidator15validateElementEP14LiteralElement, ptr @_ZN19NEDDTDValidatorBase24checkEnumeratedAttributeEP10NEDElementPKcPS3_i, i64 138}
!99 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!100 = !{!"function_entry_count", i64 0}
!101 = !{!"function_entry_count", i64 13}
!102 = !{!"function_entry_count", i64 195}
!103 = !{!"function_entry_count", i64 1}
!104 = !{!"function_entry_count", i64 2}
!105 = !{!"function_entry_count", i64 9}
!106 = !{!"function_entry_count", i64 6}
!107 = !{!"function_entry_count", i64 36}
!108 = !{!"function_entry_count", i64 60}
!109 = !{!"function_entry_count", i64 49}
!110 = !{!"function_entry_count", i64 48}
!111 = !{!"function_entry_count", i64 17}
!112 = !{!"function_entry_count", i64 32}
!113 = !{!"function_entry_count", i64 42}
!114 = !{!"function_entry_count", i64 46}
!115 = !{!"function_entry_count", i64 31}
!116 = !{!"function_entry_count", i64 23}
!117 = !{!"function_entry_count", i64 26}
!118 = !{!"function_entry_count", i64 147}
!119 = !{!"function_entry_count", i64 37}
!120 = !{!"function_entry_count", i64 4}
!121 = !{!"function_entry_count", i64 94}
!122 = !{!"function_entry_count", i64 138}
