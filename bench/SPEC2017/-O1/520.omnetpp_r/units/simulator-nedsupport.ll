; ModuleID = 'simulator/nedsupport.cc'
source_filename = "simulator/nedsupport.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.cDynamicExpression::Value" = type { i32, i8, double, ptr, %"class.std::__cxx11::basic_string", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.NEDSupport::ParameterRef" = type { %"class.cDynamicExpression::Functor", i8, i8, %"class.std::__cxx11::basic_string" }
%"class.cDynamicExpression::Functor" = type { %class.cObject }
%"class.NEDSupport::SiblingModuleParameterRef" = type { %"class.cDynamicExpression::Functor", i8, %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::LoopVar" = type { %"class.cDynamicExpression::Functor", %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::Sizeof" = type { %"class.cDynamicExpression::Functor", i8, i8, %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::XMLDoc" = type <{ %"class.cDynamicExpression::Functor", i8, [7 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN18cDynamicExpression5ValueC2ERK4cPar = comdat any

$_ZN10NEDSupport7LoopVarD2Ev = comdat any

$_ZN10NEDSupport7LoopVarD0Ev = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK10NEDSupport7LoopVar11getFullNameEv = comdat any

$_ZNK10NEDSupport7LoopVar3dupEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZNK10NEDSupport7LoopVar11getArgTypesEv = comdat any

$_ZNK18cDynamicExpression7Functor10getNumArgsEv = comdat any

$_ZNK10NEDSupport7LoopVar13getReturnTypeEv = comdat any

$_ZN10NEDSupport6XMLDocD0Ev = comdat any

$_ZNK10NEDSupport6XMLDoc11getFullNameEv = comdat any

$_ZNK10NEDSupport6XMLDoc3dupEv = comdat any

$_ZNK10NEDSupport6XMLDoc11getArgTypesEv = comdat any

$_ZNK10NEDSupport6XMLDoc13getReturnTypeEv = comdat any

$_ZN10NEDSupport11ModuleIndexD0Ev = comdat any

$_ZNK10NEDSupport11ModuleIndex11getFullNameEv = comdat any

$_ZNK10NEDSupport11ModuleIndex3dupEv = comdat any

$_ZNK10NEDSupport11ModuleIndex11getArgTypesEv = comdat any

$_ZNK10NEDSupport11ModuleIndex13getReturnTypeEv = comdat any

$_ZN10NEDSupport12ParameterRefD2Ev = comdat any

$_ZN10NEDSupport12ParameterRefD0Ev = comdat any

$_ZNK10NEDSupport12ParameterRef11getFullNameEv = comdat any

$_ZNK10NEDSupport12ParameterRef3dupEv = comdat any

$_ZNK10NEDSupport12ParameterRef11getArgTypesEv = comdat any

$_ZNK10NEDSupport12ParameterRef13getReturnTypeEv = comdat any

$_ZN10NEDSupport25SiblingModuleParameterRefD2Ev = comdat any

$_ZN10NEDSupport25SiblingModuleParameterRefD0Ev = comdat any

$_ZNK10NEDSupport25SiblingModuleParameterRef11getFullNameEv = comdat any

$_ZNK10NEDSupport25SiblingModuleParameterRef3dupEv = comdat any

$_ZNK10NEDSupport25SiblingModuleParameterRef11getArgTypesEv = comdat any

$_ZNK10NEDSupport25SiblingModuleParameterRef13getReturnTypeEv = comdat any

$_ZN10NEDSupport6SizeofD2Ev = comdat any

$_ZN10NEDSupport6SizeofD0Ev = comdat any

$_ZNK10NEDSupport6Sizeof11getFullNameEv = comdat any

$_ZNK10NEDSupport6Sizeof3dupEv = comdat any

$_ZNK10NEDSupport6Sizeof11getArgTypesEv = comdat any

$_ZNK10NEDSupport6Sizeof13getReturnTypeEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZN10NEDSupport7LoopVarC2EPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTSN18cDynamicExpression7FunctorE = comdat any

$_ZTIN18cDynamicExpression7FunctorE = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN10NEDSupport11ModuleIndexE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport11ModuleIndexE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN10NEDSupport11ModuleIndexD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport11ModuleIndex11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport11ModuleIndex3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport11ModuleIndex11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport11ModuleIndex13getReturnTypeEv, ptr @_ZN10NEDSupport11ModuleIndex8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport11ModuleIndex3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@_ZTI10cComponent = external constant ptr
@_ZTI7cModule = external constant ptr
@.str = private unnamed_addr constant [72 x i8] c"cannot evaluate `index' operator in expression: context is not a module\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@_ZTVN10NEDSupport12ParameterRefE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport12ParameterRefE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN10NEDSupport12ParameterRefD2Ev, ptr @_ZN10NEDSupport12ParameterRefD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport12ParameterRef11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport12ParameterRef11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport12ParameterRef13getReturnTypeEv, ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport12ParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"this.\00", align 1
@_ZTVN10NEDSupport25SiblingModuleParameterRefE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport25SiblingModuleParameterRefE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN10NEDSupport25SiblingModuleParameterRefD2Ev, ptr @_ZN10NEDSupport25SiblingModuleParameterRefD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport25SiblingModuleParameterRef3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport25SiblingModuleParameterRef13getReturnTypeEv, ptr @_ZN10NEDSupport25SiblingModuleParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport25SiblingModuleParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"cannot find submodule for parameter `%s.%s'\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"].\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZN10NEDSupport7LoopVar8varNamesE = dso_local local_unnamed_addr global [32 x ptr] zeroinitializer, align 16
@_ZN10NEDSupport7LoopVar4varsE = dso_local global [32 x i64] zeroinitializer, align 16
@_ZN10NEDSupport7LoopVar8varCountE = dso_local local_unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"loop variable %s not found\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"(loopvar)\00", align 1
@_ZTVN10NEDSupport6SizeofE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport6SizeofE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN10NEDSupport6SizeofD2Ev, ptr @_ZN10NEDSupport6SizeofD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport6Sizeof11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport6Sizeof11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport6Sizeof13getReturnTypeEv, ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport6Sizeof3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"sizeof(this.\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"xmldoc(\22%s\22): element not found\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"xmldoc(\22%s\22, \22%s\22): element not found\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"xmldoc(\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTVN10NEDSupport7LoopVarE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport7LoopVarE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN10NEDSupport7LoopVarD2Ev, ptr @_ZN10NEDSupport7LoopVarD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport7LoopVar11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport7LoopVar11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport7LoopVar13getReturnTypeEv, ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport7LoopVar3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@_ZTSN10NEDSupport7LoopVarE = dso_local constant [23 x i8] c"N10NEDSupport7LoopVarE\00", align 1
@_ZTSN18cDynamicExpression7FunctorE = linkonce_odr dso_local constant [31 x i8] c"N18cDynamicExpression7FunctorE\00", comdat, align 1
@_ZTI7cObject = external constant ptr
@_ZTIN18cDynamicExpression7FunctorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN18cDynamicExpression7FunctorE, ptr @_ZTI7cObject }, comdat, align 8
@_ZTIN10NEDSupport7LoopVarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport7LoopVarE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTVN10NEDSupport6XMLDocE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN10NEDSupport6XMLDocE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN10NEDSupport6XMLDocD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK10NEDSupport6XMLDoc11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK10NEDSupport6XMLDoc3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZNK10NEDSupport6XMLDoc11getArgTypesEv, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport6XMLDoc13getReturnTypeEv, ptr @_ZN10NEDSupport6XMLDoc8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN10NEDSupport6XMLDoc3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, align 8
@_ZTSN10NEDSupport6XMLDocE = dso_local constant [22 x i8] c"N10NEDSupport6XMLDocE\00", align 1
@_ZTIN10NEDSupport6XMLDocE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport6XMLDocE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTSN10NEDSupport11ModuleIndexE = dso_local constant [28 x i8] c"N10NEDSupport11ModuleIndexE\00", align 1
@_ZTIN10NEDSupport11ModuleIndexE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport11ModuleIndexE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTSN10NEDSupport12ParameterRefE = dso_local constant [29 x i8] c"N10NEDSupport12ParameterRefE\00", align 1
@_ZTIN10NEDSupport12ParameterRefE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport12ParameterRefE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTSN10NEDSupport25SiblingModuleParameterRefE = dso_local constant [42 x i8] c"N10NEDSupport25SiblingModuleParameterRefE\00", align 1
@_ZTIN10NEDSupport25SiblingModuleParameterRefE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport25SiblingModuleParameterRefE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTSN10NEDSupport6SizeofE = dso_local constant [22 x i8] c"N10NEDSupport6SizeofE\00", align 1
@_ZTIN10NEDSupport6SizeofE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10NEDSupport6SizeofE, ptr @_ZTIN18cDynamicExpression7FunctorE }, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"xmldoc\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_nedsupport.cc, ptr null }]

@_ZN10NEDSupport11ModuleIndexC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10NEDSupport11ModuleIndexC2Ev
@_ZN10NEDSupport12ParameterRefC1EPKcbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb
@_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1), ptr @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb
@_ZN10NEDSupport6SizeofC1EPKcbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN10NEDSupport6SizeofC2EPKcbb

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndexC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport11ModuleIndexE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndex8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #24
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi ptr [ %8, %7 ], [ null, %5 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef %2, ptr noundef nonnull @.str)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #24
  resume { ptr, i32 } %16

17:                                               ; preds = %9
  %18 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = sitofp i32 %19 to double
  %21 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %22, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %23, align 8, !tbaa !86
  store i8 0, ptr %22, align 8, !tbaa !89
  store i32 68, ptr %0, align 8, !tbaa !90
  %24 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  store double %20, ptr %24, align 8, !tbaa !95
  %25 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %25, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndex3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false), !prof !97
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 5, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds i8, ptr %0, i64 21
  store i8 0, ptr %7, align 1, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !84
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 %9, ptr %4, align 8, !tbaa !98
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !99

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !100
  %13 = load i64, ptr %4, align 8, !tbaa !98
  store i64 %13, ptr %5, align 8, !tbaa !89
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !100
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !101

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !89
  store i8 %17, ptr %15, align 1, !tbaa !89
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !97
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !98
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !86
  %22 = load ptr, ptr %0, align 8, !tbaa !100
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10NEDSupport12ParameterRefC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %7, align 8, !tbaa !86
  store i8 0, ptr %6, align 8, !tbaa !89
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %9 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %8)
          to label %10 unwind label %15, !prof !103

10:                                               ; preds = %4
  %11 = zext i1 %3 to i8
  %12 = zext i1 %2 to i8
  %13 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 1
  store i8 %12, ptr %13, align 8, !tbaa !104
  %14 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 2
  store i8 %11, ptr %14, align 1, !tbaa !107
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %5, align 8, !tbaa !100
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %7, align 8, !tbaa !86
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #26
  br label %23

23:                                               ; preds = %19, %22
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %6 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !104, !range !109, !noundef !110
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !111

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !69
  %11 = getelementptr inbounds ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %13, %9 ], [ %2, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24, !prof !112

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef %2, i32 noundef 15)
          to label %19 unwind label %22

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

20:                                               ; preds = %38, %41, %22
  %21 = phi { ptr, i32 } [ %23, %22 ], [ %35, %41 ], [ %35, %38 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #24
  br label %20

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = load ptr, ptr %15, align 8, !tbaa !69
  %28 = getelementptr inbounds ptr, ptr %27, i64 43
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef nonnull align 8 dereferenceable(24) ptr %29(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %26), !prof !113
  %31 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %32, ptr %31, align 8, !tbaa !84
  %33 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %33, align 8, !tbaa !86
  store i8 0, ptr %32, align 8, !tbaa !89
  invoke void @_ZN18cDynamicExpression5ValueaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %42 unwind label %34, !prof !111

34:                                               ; preds = %24
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %31, align 8, !tbaa !100
  %37 = icmp eq ptr %36, %32
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %33, align 8, !tbaa !86
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  br label %20

41:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #26
  br label %20

42:                                               ; preds = %24
  ret void
}

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueC2ERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %4, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %5, align 8, !tbaa !86
  store i8 0, ptr %4, align 8, !tbaa !89
  invoke void @_ZN18cDynamicExpression5ValueaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %6 unwind label %7, !prof !111

6:                                                ; preds = %2
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %3, align 8, !tbaa !100
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i64, ptr %5, align 8, !tbaa !86
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %15

15:                                               ; preds = %11, %14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport12ParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 1, !tbaa !107, !range !109, !noundef !110
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %10, ptr %5, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %10, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false), !prof !97
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 5, ptr %11, align 8, !tbaa !86
  %12 = getelementptr inbounds i8, ptr %5, i64 21
  store i8 0, ptr %12, align 1, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %13 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !86, !noalias !114
  %15 = icmp ugt i64 %14, 4611686018427387898
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %17 unwind label %45

17:                                               ; preds = %16
  unreachable

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !100, !noalias !114
  %21 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, i64 noundef %14)
          to label %22 unwind label %45

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %23, ptr %0, align 8, !tbaa !84, !alias.scope !114
  %24 = load ptr, ptr %21, align 8, !tbaa !100
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !86
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %31, i1 false)
  br label %34

32:                                               ; preds = %22
  store ptr %24, ptr %0, align 8, !tbaa !100, !alias.scope !114
  %33 = load i64, ptr %25, align 8, !tbaa !89
  store i64 %33, ptr %23, align 8, !tbaa !89, !alias.scope !114
  br label %34

34:                                               ; preds = %27, %32
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !86
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !86, !alias.scope !114
  store ptr %25, ptr %21, align 8, !tbaa !100
  store i64 0, ptr %35, align 8, !tbaa !86
  store i8 0, ptr %25, align 8, !tbaa !89
  %38 = load ptr, ptr %5, align 8, !tbaa !100
  %39 = icmp eq ptr %38, %10
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, ptr %11, align 8, !tbaa !86
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  br label %44

43:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %38) #26
  br label %44

44:                                               ; preds = %40, %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %61

45:                                               ; preds = %18, %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = load ptr, ptr %5, align 8, !tbaa !100
  %48 = icmp eq ptr %47, %10
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %11, align 8, !tbaa !86
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  br label %53

52:                                               ; preds = %45
  call void @_ZdlPv(ptr noundef %47) #26
  br label %53

53:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  resume { ptr, i32 } %46

54:                                               ; preds = %4
  %55 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %56, ptr %0, align 8, !tbaa !84
  %57 = load ptr, ptr %55, align 8, !tbaa !100
  %58 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %57, ptr noundef %60)
  br label %61

61:                                               ; preds = %54, %44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport25SiblingModuleParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 2
  store ptr %7, ptr %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %8, align 8, !tbaa !86
  store i8 0, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 2
  store ptr %10, ptr %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %11, align 8, !tbaa !86
  store i8 0, ptr %10, align 8, !tbaa !89
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %12)
          to label %14 unwind label %23

14:                                               ; preds = %5
  %15 = load i64, ptr %11, align 8, !tbaa !86
  %16 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %17 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %15, ptr noundef %2, i64 noundef %16)
          to label %18 unwind label %23

18:                                               ; preds = %14
  %19 = zext i1 %4 to i8
  %20 = zext i1 %3 to i8
  %21 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 1
  store i8 %20, ptr %21, align 8, !tbaa !117
  %22 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  store i8 %19, ptr %22, align 8, !tbaa !119
  ret void

23:                                               ; preds = %14, %5
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = load ptr, ptr %9, align 8, !tbaa !100
  %26 = icmp eq ptr %25, %10
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, ptr %11, align 8, !tbaa !86
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %25) #26
  br label %31

31:                                               ; preds = %27, %30
  %32 = load ptr, ptr %6, align 8, !tbaa !100
  %33 = icmp eq ptr %32, %7
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, ptr %8, align 8, !tbaa !86
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  br label %38

37:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %32) #26
  br label %38

38:                                               ; preds = %34, %37
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !117, !range !109, !noundef !110
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !69
  %12 = getelementptr inbounds ptr, ptr %11, i64 37
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi ptr [ %14, %10 ], [ %2, %5 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @__dynamic_cast(ptr nonnull %16, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #24
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef %2, i32 noundef 15)
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #24
  br label %80

28:                                               ; preds = %20
  %29 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 3
  %30 = load i8, ptr %29, align 8, !tbaa !119, !range !109, !noundef !110
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 0, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !95
  %35 = fptosi double %34 to i32
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ -1, %28 ]
  %38 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %21, ptr noundef %39, i32 noundef %37)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %43 = icmp eq i32 %37, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %45, ptr %6, align 8, !tbaa !84
  %46 = load ptr, ptr %38, align 8, !tbaa !100
  %47 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %46, ptr noundef %49)
  br label %52

50:                                               ; preds = %42
  %51 = load ptr, ptr %38, align 8, !tbaa !100
  call void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.3, ptr noundef %51, i32 noundef %37)
  br label %52

52:                                               ; preds = %50, %44
  %53 = call ptr @__cxa_allocate_exception(i64 128) #24
  %54 = load ptr, ptr %6, align 8, !tbaa !100
  %55 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !100
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %53, ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %54, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
          to label %82 unwind label %60

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %53) #24
  br label %62

60:                                               ; preds = %57
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  %64 = load ptr, ptr %6, align 8, !tbaa !100
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !86
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %72

71:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #26
  br label %72

72:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  br label %80

73:                                               ; preds = %36
  %74 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !100
  %76 = load ptr, ptr %40, align 8, !tbaa !69
  %77 = getelementptr inbounds ptr, ptr %76, i64 43
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef nonnull align 8 dereferenceable(24) ptr %78(ptr noundef nonnull align 8 dereferenceable(104) %40, ptr noundef %75)
  tail call void @_ZN18cDynamicExpression5ValueC2ERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %79)
  ret void

80:                                               ; preds = %72, %26
  %81 = phi { ptr, i32 } [ %63, %72 ], [ %27, %26 ]
  resume { ptr, i32 } %81

82:                                               ; preds = %57
  unreachable
}

declare noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1, ptr nocapture noundef readonly %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !119, !range !109, !noundef !110
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %153, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #24
  %13 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %14, ptr %7, align 8, !tbaa !84, !alias.scope !120
  %15 = load ptr, ptr %13, align 8, !tbaa !100, !noalias !120
  %16 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86, !noalias !120
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %15, ptr noundef %18)
  %19 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5)
          to label %31 unwind label %20

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = load ptr, ptr %7, align 8, !tbaa !100, !alias.scope !120
  %23 = icmp eq ptr %22, %14
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !86, !alias.scope !120
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %29

28:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %22) #26
  br label %29

29:                                               ; preds = %152, %214, %165, %169, %24, %28
  %30 = phi { ptr, i32 } [ %21, %28 ], [ %21, %24 ], [ %162, %169 ], [ %162, %165 ], [ %145, %152 ], [ %207, %214 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %12
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !86, !noalias !123
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !86, !noalias !123
  %36 = sub i64 4611686018427387903, %35
  %37 = icmp ult i64 %36, %33
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %39 unwind label %124

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %31
  %41 = load ptr, ptr %2, align 8, !tbaa !100, !noalias !123
  %42 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %41, i64 noundef %33)
          to label %43 unwind label %124

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %44, ptr %6, align 8, !tbaa !84, !alias.scope !123
  %45 = load ptr, ptr %42, align 8, !tbaa !100
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 2
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !86
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %46, i64 %52, i1 false)
  br label %55

53:                                               ; preds = %43
  store ptr %45, ptr %6, align 8, !tbaa !100, !alias.scope !123
  %54 = load i64, ptr %46, align 8, !tbaa !89
  store i64 %54, ptr %44, align 8, !tbaa !89, !alias.scope !123
  br label %55

55:                                               ; preds = %48, %53
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !86
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !86, !alias.scope !123
  store ptr %46, ptr %42, align 8, !tbaa !100
  store i64 0, ptr %56, align 8, !tbaa !86
  store i8 0, ptr %46, align 8, !tbaa !89
  %59 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6)
          to label %60 unwind label %126

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %61, ptr %5, align 8, !tbaa !84, !alias.scope !126
  %62 = load ptr, ptr %59, align 8, !tbaa !100
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 0, i32 2
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !86
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  %69 = add nuw nsw i64 %67, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %61, ptr noundef nonnull align 8 dereferenceable(1) %63, i64 %69, i1 false)
  br label %72

70:                                               ; preds = %60
  store ptr %62, ptr %5, align 8, !tbaa !100, !alias.scope !126
  %71 = load i64, ptr %63, align 8, !tbaa !89
  store i64 %71, ptr %61, align 8, !tbaa !89, !alias.scope !126
  br label %72

72:                                               ; preds = %65, %70
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !86
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %74, ptr %75, align 8, !tbaa !86, !alias.scope !126
  store ptr %63, ptr %59, align 8, !tbaa !100
  store i64 0, ptr %73, align 8, !tbaa !86
  store i8 0, ptr %63, align 8, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %76 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !86, !noalias !129
  %78 = load i64, ptr %75, align 8, !tbaa !86, !noalias !129
  %79 = sub i64 4611686018427387903, %78
  %80 = icmp ult i64 %79, %77
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %82 unwind label %128

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %72
  %84 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !100, !noalias !129
  %86 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %85, i64 noundef %77)
          to label %87 unwind label %128

87:                                               ; preds = %83
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %88, ptr %0, align 8, !tbaa !84, !alias.scope !129
  %89 = load ptr, ptr %86, align 8, !tbaa !100
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 2
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !86
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %88, ptr noundef nonnull align 8 dereferenceable(1) %90, i64 %96, i1 false)
  br label %99

97:                                               ; preds = %87
  store ptr %89, ptr %0, align 8, !tbaa !100, !alias.scope !129
  %98 = load i64, ptr %90, align 8, !tbaa !89
  store i64 %98, ptr %88, align 8, !tbaa !89, !alias.scope !129
  br label %99

99:                                               ; preds = %92, %97
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !86
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %101, ptr %102, align 8, !tbaa !86, !alias.scope !129
  store ptr %90, ptr %86, align 8, !tbaa !100
  store i64 0, ptr %100, align 8, !tbaa !86
  store i8 0, ptr %90, align 8, !tbaa !89
  %103 = load ptr, ptr %5, align 8, !tbaa !100
  %104 = icmp eq ptr %103, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, ptr %75, align 8, !tbaa !86
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  br label %109

108:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %103) #26
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr %6, align 8, !tbaa !100
  %111 = icmp eq ptr %110, %44
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, ptr %58, align 8, !tbaa !86
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #26
  br label %116

116:                                              ; preds = %112, %115
  %117 = load ptr, ptr %7, align 8, !tbaa !100
  %118 = icmp eq ptr %117, %14
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, ptr %34, align 8, !tbaa !86
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #26
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %215

124:                                              ; preds = %40, %38
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %144

126:                                              ; preds = %55
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %136

128:                                              ; preds = %83, %81
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %5, align 8, !tbaa !100
  %131 = icmp eq ptr %130, %61
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i64, ptr %75, align 8, !tbaa !86
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %136

135:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %130) #26
  br label %136

136:                                              ; preds = %135, %132, %126
  %137 = phi { ptr, i32 } [ %127, %126 ], [ %129, %132 ], [ %129, %135 ]
  %138 = load ptr, ptr %6, align 8, !tbaa !100
  %139 = icmp eq ptr %138, %44
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i64, ptr %58, align 8, !tbaa !86
  %142 = icmp ult i64 %141, 16
  call void @llvm.assume(i1 %142)
  br label %144

143:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %138) #26
  br label %144

144:                                              ; preds = %143, %140, %124
  %145 = phi { ptr, i32 } [ %125, %124 ], [ %137, %140 ], [ %137, %143 ]
  %146 = load ptr, ptr %7, align 8, !tbaa !100
  %147 = icmp eq ptr %146, %14
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, ptr %34, align 8, !tbaa !86
  %150 = icmp ult i64 %149, 16
  call void @llvm.assume(i1 %150)
  br label %152

151:                                              ; preds = %144
  call void @_ZdlPv(ptr noundef %146) #26
  br label %152

152:                                              ; preds = %148, %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %29

153:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #24
  %154 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %155, ptr %8, align 8, !tbaa !84, !alias.scope !132
  %156 = load ptr, ptr %154, align 8, !tbaa !100, !noalias !132
  %157 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !86, !noalias !132
  %159 = getelementptr inbounds i8, ptr %156, i64 %158
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %156, ptr noundef %159)
  %160 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.7)
          to label %170 unwind label %161

161:                                              ; preds = %153
  %162 = landingpad { ptr, i32 }
          cleanup
  %163 = load ptr, ptr %8, align 8, !tbaa !100, !alias.scope !132
  %164 = icmp eq ptr %163, %155
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %167 = load i64, ptr %166, align 8, !tbaa !86, !alias.scope !132
  %168 = icmp ult i64 %167, 16
  call void @llvm.assume(i1 %168)
  br label %29

169:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %163) #26
  br label %29

170:                                              ; preds = %153
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %171 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !86, !noalias !135
  %173 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !86, !noalias !135
  %175 = sub i64 4611686018427387903, %174
  %176 = icmp ult i64 %175, %172
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %178 unwind label %206

178:                                              ; preds = %177
  unreachable

179:                                              ; preds = %170
  %180 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !100, !noalias !135
  %182 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %181, i64 noundef %172)
          to label %183 unwind label %206

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %184, ptr %0, align 8, !tbaa !84, !alias.scope !135
  %185 = load ptr, ptr %182, align 8, !tbaa !100
  %186 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %182, i64 0, i32 2
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %182, i64 0, i32 1
  %190 = load i64, ptr %189, align 8, !tbaa !86
  %191 = icmp ult i64 %190, 16
  call void @llvm.assume(i1 %191)
  %192 = add nuw nsw i64 %190, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %184, ptr noundef nonnull align 8 dereferenceable(1) %186, i64 %192, i1 false)
  br label %195

193:                                              ; preds = %183
  store ptr %185, ptr %0, align 8, !tbaa !100, !alias.scope !135
  %194 = load i64, ptr %186, align 8, !tbaa !89
  store i64 %194, ptr %184, align 8, !tbaa !89, !alias.scope !135
  br label %195

195:                                              ; preds = %188, %193
  %196 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %182, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !86
  %198 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %197, ptr %198, align 8, !tbaa !86, !alias.scope !135
  store ptr %186, ptr %182, align 8, !tbaa !100
  store i64 0, ptr %196, align 8, !tbaa !86
  store i8 0, ptr %186, align 8, !tbaa !89
  %199 = load ptr, ptr %8, align 8, !tbaa !100
  %200 = icmp eq ptr %199, %155
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i64, ptr %173, align 8, !tbaa !86
  %203 = icmp ult i64 %202, 16
  call void @llvm.assume(i1 %203)
  br label %205

204:                                              ; preds = %195
  call void @_ZdlPv(ptr noundef %199) #26
  br label %205

205:                                              ; preds = %201, %204
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  br label %215

206:                                              ; preds = %179, %177
  %207 = landingpad { ptr, i32 }
          cleanup
  %208 = load ptr, ptr %8, align 8, !tbaa !100
  %209 = icmp eq ptr %208, %155
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i64, ptr %173, align 8, !tbaa !86
  %212 = icmp ult i64 %211, 16
  call void @llvm.assume(i1 %212)
  br label %214

213:                                              ; preds = %206
  call void @_ZdlPv(ptr noundef %208) #26
  br label %214

214:                                              ; preds = %210, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  br label %29

215:                                              ; preds = %205, %123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN10NEDSupport7LoopVar7pushVarEPKc(ptr noundef %0) local_unnamed_addr #9 align 2 !prof !138 {
  %2 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [32 x ptr], ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 0, i64 %3
  store ptr %0, ptr %4, align 8, !tbaa !140
  %5 = add nsw i32 %2, 1
  store i32 %5, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %6 = getelementptr inbounds [32 x i64], ptr @_ZN10NEDSupport7LoopVar4varsE, i64 0, i64 %3
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN10NEDSupport7LoopVar6popVarEv() local_unnamed_addr #9 align 2 !prof !138 {
  %1 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN10NEDSupport7LoopVar5resetEv() local_unnamed_addr #10 align 2 !prof !141 {
  store i32 0, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %6 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %14, label %29, !prof !143

10:                                               ; preds = %14
  %11 = zext nneg i32 %8 to i64
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %29, label %14, !prof !144, !llvm.loop !145

14:                                               ; preds = %5, %10
  %15 = phi i64 [ %12, %10 ], [ 0, %5 ]
  %16 = getelementptr inbounds [32 x ptr], ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %17) #27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !prof !148

20:                                               ; preds = %14
  %21 = getelementptr inbounds [32 x i64], ptr @_ZN10NEDSupport7LoopVar4varsE, i64 0, i64 %15
  %22 = load i64, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %24, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %25, align 8, !tbaa !86
  store i8 0, ptr %24, align 8, !tbaa !89
  store i32 68, ptr %0, align 8, !tbaa !90
  %26 = sitofp i64 %22 to double
  %27 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  store double %26, ptr %27, align 8, !tbaa !95
  %28 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !96
  ret void

29:                                               ; preds = %10, %5
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %31 = load ptr, ptr %6, align 8, !tbaa !100
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %31)
          to label %32 unwind label %33

32:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #24
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport7LoopVar3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false), !prof !97
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 9, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2, i32 1, i64 1
  store i8 0, ptr %8, align 1, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %9 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %1, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !86, !noalias !149
  %11 = icmp ugt i64 %10, 4611686018427387894
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %13 unwind label %41

13:                                               ; preds = %12
  unreachable

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100, !noalias !149
  %17 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %16, i64 noundef %10)
          to label %18 unwind label %41

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %19, ptr %0, align 8, !tbaa !84, !alias.scope !149
  %20 = load ptr, ptr %17, align 8, !tbaa !100
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !86
  %26 = icmp ult i64 %25, 16
  call void @llvm.assume(i1 %26)
  %27 = add nuw nsw i64 %25, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %21, i64 %27, i1 false)
  br label %30

28:                                               ; preds = %18
  store ptr %20, ptr %0, align 8, !tbaa !100, !alias.scope !149
  %29 = load i64, ptr %21, align 8, !tbaa !89
  store i64 %29, ptr %19, align 8, !tbaa !89, !alias.scope !149
  br label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !86
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %32, ptr %33, align 8, !tbaa !86, !alias.scope !149
  store ptr %21, ptr %17, align 8, !tbaa !100
  store i64 0, ptr %31, align 8, !tbaa !86
  store i8 0, ptr %21, align 8, !tbaa !89
  %34 = load ptr, ptr %5, align 8, !tbaa !100
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, ptr %7, align 8, !tbaa !86
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  br label %40

39:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %34) #26
  br label %40

40:                                               ; preds = %36, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  ret void

41:                                               ; preds = %14, %12
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = load ptr, ptr %5, align 8, !tbaa !100
  %44 = icmp eq ptr %43, %6
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, ptr %7, align 8, !tbaa !86
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %43) #26
  br label %49

49:                                               ; preds = %48, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  resume { ptr, i32 } %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport6SizeofC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6SizeofE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %7, align 8, !tbaa !86
  store i8 0, ptr %6, align 8, !tbaa !89
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %9 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %8)
          to label %10 unwind label %15, !prof !153

10:                                               ; preds = %4
  %11 = zext i1 %3 to i8
  %12 = zext i1 %2 to i8
  %13 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 1
  store i8 %12, ptr %13, align 8, !tbaa !154
  %14 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 2
  store i8 %11, ptr %14, align 1, !tbaa !156
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %5, align 8, !tbaa !100
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %7, align 8, !tbaa !86
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #26
  br label %23

23:                                               ; preds = %19, %22
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %6 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !154, !range !109, !noundef !110
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !158

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !69
  %11 = getelementptr inbounds ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %2), !prof !159
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %13, %9 ], [ %2, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !160

17:                                               ; preds = %14
  %18 = tail call ptr @__dynamic_cast(ptr nonnull %15, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #24
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %27, !prof !160

22:                                               ; preds = %19
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef %2, i32 noundef 15)
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #24
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  %28 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = load ptr, ptr %20, align 8, !tbaa !69
  %31 = getelementptr inbounds ptr, ptr %30, i64 61
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr noundef %29, i32 noundef -1), !prof !161
  %34 = load ptr, ptr %28, align 8, !tbaa !100
  br i1 %33, label %35, label %46, !prof !162

35:                                               ; preds = %27
  %36 = load ptr, ptr %20, align 8, !tbaa !69
  %37 = getelementptr inbounds ptr, ptr %36, i64 68
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr noundef %34), !prof !163
  %40 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %41 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %41, ptr %40, align 8, !tbaa !84
  %42 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %42, align 8, !tbaa !86
  store i8 0, ptr %41, align 8, !tbaa !89
  store i32 68, ptr %0, align 8, !tbaa !90
  %43 = sitofp i32 %39 to double
  %44 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  store double %43, ptr %44, align 8, !tbaa !95
  %45 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %45, align 8, !tbaa !96
  br label %61

46:                                               ; preds = %27
  %47 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr noundef %34, i32 noundef 0)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load ptr, ptr %28, align 8, !tbaa !100
  %51 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr noundef %50, i32 noundef -1)
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %54, ptr %53, align 8, !tbaa !84
  %55 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %55, align 8, !tbaa !86
  store i8 0, ptr %54, align 8, !tbaa !89
  store i32 68, ptr %0, align 8, !tbaa !90
  %56 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  br i1 %52, label %59, label %57

57:                                               ; preds = %49
  store double 1.000000e+00, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %58, align 8, !tbaa !96
  br label %60

59:                                               ; preds = %49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %46, %59, %57
  tail call void @llvm.assume(i1 %48)
  br label %61

61:                                               ; preds = %60, %35
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport6Sizeof3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %7 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !156, !range !109, !noundef !110
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.11, ptr @.str.10
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %11, ptr %6, align 8, !tbaa !84
  %12 = select i1 %9, i64 7, i64 12
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %10, ptr noundef nonnull %13)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %14 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 3, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !86, !noalias !164
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86, !noalias !164
  %18 = sub i64 4611686018427387903, %17
  %19 = icmp ult i64 %18, %15
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %21 unwind label %73

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %4
  %23 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !100, !noalias !164
  %25 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %24, i64 noundef %15)
          to label %26 unwind label %73

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %27, ptr %5, align 8, !tbaa !84, !alias.scope !164
  %28 = load ptr, ptr %25, align 8, !tbaa !100
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 2
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !86
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %29, i64 %35, i1 false)
  br label %38

36:                                               ; preds = %26
  store ptr %28, ptr %5, align 8, !tbaa !100, !alias.scope !164
  %37 = load i64, ptr %29, align 8, !tbaa !89
  store i64 %37, ptr %27, align 8, !tbaa !89, !alias.scope !164
  br label %38

38:                                               ; preds = %31, %36
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %40, ptr %41, align 8, !tbaa !86, !alias.scope !164
  store ptr %29, ptr %25, align 8, !tbaa !100
  store i64 0, ptr %39, align 8, !tbaa !86
  store i8 0, ptr %29, align 8, !tbaa !89
  %42 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12)
          to label %43 unwind label %75

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %44, ptr %0, align 8, !tbaa !84, !alias.scope !167
  %45 = load ptr, ptr %42, align 8, !tbaa !100
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 2
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !86
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %46, i64 %52, i1 false)
  br label %55

53:                                               ; preds = %43
  store ptr %45, ptr %0, align 8, !tbaa !100, !alias.scope !167
  %54 = load i64, ptr %46, align 8, !tbaa !89
  store i64 %54, ptr %44, align 8, !tbaa !89, !alias.scope !167
  br label %55

55:                                               ; preds = %48, %53
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !86
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !86, !alias.scope !167
  store ptr %46, ptr %42, align 8, !tbaa !100
  store i64 0, ptr %56, align 8, !tbaa !86
  store i8 0, ptr %46, align 8, !tbaa !89
  %59 = load ptr, ptr %5, align 8, !tbaa !100
  %60 = icmp eq ptr %59, %27
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, ptr %41, align 8, !tbaa !86
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %59) #26
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %6, align 8, !tbaa !100
  %67 = icmp eq ptr %66, %11
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, ptr %16, align 8, !tbaa !86
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %72

71:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #26
  br label %72

72:                                               ; preds = %68, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  ret void

73:                                               ; preds = %22, %20
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %83

75:                                               ; preds = %38
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load ptr, ptr %5, align 8, !tbaa !100
  %78 = icmp eq ptr %77, %27
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, ptr %41, align 8, !tbaa !86
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %83

82:                                               ; preds = %75
  call void @_ZdlPv(ptr noundef %77) #26
  br label %83

83:                                               ; preds = %82, %79, %73
  %84 = phi { ptr, i32 } [ %74, %73 ], [ %76, %79 ], [ %76, %82 ]
  %85 = load ptr, ptr %6, align 8, !tbaa !100
  %86 = icmp eq ptr %85, %11
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, ptr %16, align 8, !tbaa !86
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %85) #26
  br label %91

91:                                               ; preds = %90, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  resume { ptr, i32 } %84
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport6XMLDoc8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %6 = icmp eq i32 %4, 1
  %7 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !140
  %8 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  br i1 %6, label %10, label %22

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 8, !tbaa !69
  %12 = getelementptr inbounds ptr, ptr %11, i64 29
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef %9, ptr noundef null)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %18 = load ptr, ptr %8, align 8, !tbaa !100
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.13, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %43

22:                                               ; preds = %5
  %23 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 1, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = load ptr, ptr %7, align 8, !tbaa !69
  %26 = getelementptr inbounds ptr, ptr %25, i64 29
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef %9, ptr noundef %24)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %32 = load ptr, ptr %8, align 8, !tbaa !100
  %33 = load ptr, ptr %23, align 8, !tbaa !100
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.14, ptr noundef %32, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %22, %10
  %38 = phi ptr [ %14, %10 ], [ %28, %22 ]
  %39 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 2
  store ptr %40, ptr %39, align 8, !tbaa !84
  %41 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %41, align 8, !tbaa !86
  store i8 0, ptr %40, align 8, !tbaa !89
  store i32 88, ptr %0, align 8, !tbaa !90
  %42 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 5
  store ptr %38, ptr %42, align 8, !tbaa !170
  ret void

43:                                               ; preds = %35, %20
  %44 = phi ptr [ %31, %35 ], [ %17, %20 ]
  %45 = phi { ptr, i32 } [ %36, %35 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %44) #24
  resume { ptr, i32 } %45
}

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN10NEDSupport6XMLDoc3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %12, label %90

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %13, ptr %6, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %13, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false), !prof !97
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 7, ptr %14, align 8, !tbaa !86
  %15 = getelementptr inbounds i8, ptr %6, i64 23
  store i8 0, ptr %15, align 1, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86, !noalias !171
  %18 = icmp ugt i64 %17, 4611686018427387896
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %20 unwind label %71

20:                                               ; preds = %19
  unreachable

21:                                               ; preds = %12
  %22 = load ptr, ptr %2, align 8, !tbaa !100, !noalias !171
  %23 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %22, i64 noundef %17)
          to label %24 unwind label %71

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %25, ptr %5, align 8, !tbaa !84, !alias.scope !171
  %26 = load ptr, ptr %23, align 8, !tbaa !100
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !86
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  %33 = add nuw nsw i64 %31, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %33, i1 false)
  br label %36

34:                                               ; preds = %24
  store ptr %26, ptr %5, align 8, !tbaa !100, !alias.scope !171
  %35 = load i64, ptr %27, align 8, !tbaa !89
  store i64 %35, ptr %25, align 8, !tbaa !89, !alias.scope !171
  br label %36

36:                                               ; preds = %29, %34
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !86
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !86, !alias.scope !171
  store ptr %27, ptr %23, align 8, !tbaa !100
  store i64 0, ptr %37, align 8, !tbaa !86
  store i8 0, ptr %27, align 8, !tbaa !89
  %40 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12)
          to label %41 unwind label %73

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %42, ptr %0, align 8, !tbaa !84, !alias.scope !174
  %43 = load ptr, ptr %40, align 8, !tbaa !100
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !86
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false)
  br label %53

51:                                               ; preds = %41
  store ptr %43, ptr %0, align 8, !tbaa !100, !alias.scope !174
  %52 = load i64, ptr %44, align 8, !tbaa !89
  store i64 %52, ptr %42, align 8, !tbaa !89, !alias.scope !174
  br label %53

53:                                               ; preds = %46, %51
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !86
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !86, !alias.scope !174
  store ptr %44, ptr %40, align 8, !tbaa !100
  store i64 0, ptr %54, align 8, !tbaa !86
  store i8 0, ptr %44, align 8, !tbaa !89
  %57 = load ptr, ptr %5, align 8, !tbaa !100
  %58 = icmp eq ptr %57, %25
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, ptr %39, align 8, !tbaa !86
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  br label %63

62:                                               ; preds = %53
  call void @_ZdlPv(ptr noundef %57) #26
  br label %63

63:                                               ; preds = %59, %62
  %64 = load ptr, ptr %6, align 8, !tbaa !100
  %65 = icmp eq ptr %64, %13
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, ptr %14, align 8, !tbaa !86
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #26
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %246

71:                                               ; preds = %21, %19
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %81

73:                                               ; preds = %36
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = load ptr, ptr %5, align 8, !tbaa !100
  %76 = icmp eq ptr %75, %25
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, ptr %39, align 8, !tbaa !86
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  br label %81

80:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %75) #26
  br label %81

81:                                               ; preds = %80, %77, %71
  %82 = phi { ptr, i32 } [ %72, %71 ], [ %74, %77 ], [ %74, %80 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !100
  %84 = icmp eq ptr %83, %13
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, ptr %14, align 8, !tbaa !86
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %81
  call void @_ZdlPv(ptr noundef %83) #26
  br label %89

89:                                               ; preds = %88, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %247

90:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #24
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %91, ptr %10, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %91, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false), !prof !97
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  store i64 7, ptr %92, align 8, !tbaa !86
  %93 = getelementptr inbounds i8, ptr %10, i64 23
  store i8 0, ptr %93, align 1, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !86, !noalias !177
  %96 = icmp ugt i64 %95, 4611686018427387896
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %98 unwind label %207

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %90
  %100 = load ptr, ptr %2, align 8, !tbaa !100, !noalias !177
  %101 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %100, i64 noundef %95)
          to label %102 unwind label %207

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %103, ptr %9, align 8, !tbaa !84, !alias.scope !177
  %104 = load ptr, ptr %101, align 8, !tbaa !100
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 2
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !86
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  %111 = add nuw nsw i64 %109, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %103, ptr noundef nonnull align 8 dereferenceable(1) %105, i64 %111, i1 false)
  br label %114

112:                                              ; preds = %102
  store ptr %104, ptr %9, align 8, !tbaa !100, !alias.scope !177
  %113 = load i64, ptr %105, align 8, !tbaa !89
  store i64 %113, ptr %103, align 8, !tbaa !89, !alias.scope !177
  br label %114

114:                                              ; preds = %107, %112
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !86
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 %116, ptr %117, align 8, !tbaa !86, !alias.scope !177
  store ptr %105, ptr %101, align 8, !tbaa !100
  store i64 0, ptr %115, align 8, !tbaa !86
  store i8 0, ptr %105, align 8, !tbaa !89
  %118 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.16)
          to label %119 unwind label %209

119:                                              ; preds = %114
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %120, ptr %8, align 8, !tbaa !84, !alias.scope !180
  %121 = load ptr, ptr %118, align 8, !tbaa !100
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %118, i64 0, i32 2
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %118, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !86
  %127 = icmp ult i64 %126, 16
  call void @llvm.assume(i1 %127)
  %128 = add nuw nsw i64 %126, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %120, ptr noundef nonnull align 8 dereferenceable(1) %122, i64 %128, i1 false)
  br label %131

129:                                              ; preds = %119
  store ptr %121, ptr %8, align 8, !tbaa !100, !alias.scope !180
  %130 = load i64, ptr %122, align 8, !tbaa !89
  store i64 %130, ptr %120, align 8, !tbaa !89, !alias.scope !180
  br label %131

131:                                              ; preds = %124, %129
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %118, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !86
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 %133, ptr %134, align 8, !tbaa !86, !alias.scope !180
  store ptr %122, ptr %118, align 8, !tbaa !100
  store i64 0, ptr %132, align 8, !tbaa !86
  store i8 0, ptr %122, align 8, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 1, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !86, !noalias !183
  %137 = load i64, ptr %134, align 8, !tbaa !86, !noalias !183
  %138 = sub i64 4611686018427387903, %137
  %139 = icmp ult i64 %138, %136
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %141 unwind label %211

141:                                              ; preds = %140
  unreachable

142:                                              ; preds = %131
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !100, !noalias !183
  %145 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %144, i64 noundef %136)
          to label %146 unwind label %211

146:                                              ; preds = %142
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %147, ptr %7, align 8, !tbaa !84, !alias.scope !183
  %148 = load ptr, ptr %145, align 8, !tbaa !100
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %145, i64 0, i32 2
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %145, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !86
  %154 = icmp ult i64 %153, 16
  call void @llvm.assume(i1 %154)
  %155 = add nuw nsw i64 %153, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %147, ptr noundef nonnull align 8 dereferenceable(1) %149, i64 %155, i1 false)
  br label %158

156:                                              ; preds = %146
  store ptr %148, ptr %7, align 8, !tbaa !100, !alias.scope !183
  %157 = load i64, ptr %149, align 8, !tbaa !89
  store i64 %157, ptr %147, align 8, !tbaa !89, !alias.scope !183
  br label %158

158:                                              ; preds = %151, %156
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %145, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !86
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %160, ptr %161, align 8, !tbaa !86, !alias.scope !183
  store ptr %149, ptr %145, align 8, !tbaa !100
  store i64 0, ptr %159, align 8, !tbaa !86
  store i8 0, ptr %149, align 8, !tbaa !89
  %162 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.12)
          to label %163 unwind label %213

163:                                              ; preds = %158
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %164, ptr %0, align 8, !tbaa !84, !alias.scope !186
  %165 = load ptr, ptr %162, align 8, !tbaa !100
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %162, i64 0, i32 2
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %162, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !86
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  %172 = add nuw nsw i64 %170, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %164, ptr noundef nonnull align 8 dereferenceable(1) %166, i64 %172, i1 false)
  br label %175

173:                                              ; preds = %163
  store ptr %165, ptr %0, align 8, !tbaa !100, !alias.scope !186
  %174 = load i64, ptr %166, align 8, !tbaa !89
  store i64 %174, ptr %164, align 8, !tbaa !89, !alias.scope !186
  br label %175

175:                                              ; preds = %168, %173
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %162, i64 0, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !86
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %177, ptr %178, align 8, !tbaa !86, !alias.scope !186
  store ptr %166, ptr %162, align 8, !tbaa !100
  store i64 0, ptr %176, align 8, !tbaa !86
  store i8 0, ptr %166, align 8, !tbaa !89
  %179 = load ptr, ptr %7, align 8, !tbaa !100
  %180 = icmp eq ptr %179, %147
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i64, ptr %161, align 8, !tbaa !86
  %183 = icmp ult i64 %182, 16
  call void @llvm.assume(i1 %183)
  br label %185

184:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %179) #26
  br label %185

185:                                              ; preds = %181, %184
  %186 = load ptr, ptr %8, align 8, !tbaa !100
  %187 = icmp eq ptr %186, %120
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i64, ptr %134, align 8, !tbaa !86
  %190 = icmp ult i64 %189, 16
  call void @llvm.assume(i1 %190)
  br label %192

191:                                              ; preds = %185
  call void @_ZdlPv(ptr noundef %186) #26
  br label %192

192:                                              ; preds = %188, %191
  %193 = load ptr, ptr %9, align 8, !tbaa !100
  %194 = icmp eq ptr %193, %103
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i64, ptr %117, align 8, !tbaa !86
  %197 = icmp ult i64 %196, 16
  call void @llvm.assume(i1 %197)
  br label %199

198:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %193) #26
  br label %199

199:                                              ; preds = %195, %198
  %200 = load ptr, ptr %10, align 8, !tbaa !100
  %201 = icmp eq ptr %200, %91
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i64, ptr %92, align 8, !tbaa !86
  %204 = icmp ult i64 %203, 16
  call void @llvm.assume(i1 %204)
  br label %206

205:                                              ; preds = %199
  call void @_ZdlPv(ptr noundef %200) #26
  br label %206

206:                                              ; preds = %202, %205
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #24
  br label %246

207:                                              ; preds = %99, %97
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %237

209:                                              ; preds = %114
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %229

211:                                              ; preds = %142, %140
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %221

213:                                              ; preds = %158
  %214 = landingpad { ptr, i32 }
          cleanup
  %215 = load ptr, ptr %7, align 8, !tbaa !100
  %216 = icmp eq ptr %215, %147
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i64, ptr %161, align 8, !tbaa !86
  %219 = icmp ult i64 %218, 16
  call void @llvm.assume(i1 %219)
  br label %221

220:                                              ; preds = %213
  call void @_ZdlPv(ptr noundef %215) #26
  br label %221

221:                                              ; preds = %220, %217, %211
  %222 = phi { ptr, i32 } [ %212, %211 ], [ %214, %217 ], [ %214, %220 ]
  %223 = load ptr, ptr %8, align 8, !tbaa !100
  %224 = icmp eq ptr %223, %120
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i64, ptr %134, align 8, !tbaa !86
  %227 = icmp ult i64 %226, 16
  call void @llvm.assume(i1 %227)
  br label %229

228:                                              ; preds = %221
  call void @_ZdlPv(ptr noundef %223) #26
  br label %229

229:                                              ; preds = %228, %225, %209
  %230 = phi { ptr, i32 } [ %210, %209 ], [ %222, %225 ], [ %222, %228 ]
  %231 = load ptr, ptr %9, align 8, !tbaa !100
  %232 = icmp eq ptr %231, %103
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i64, ptr %117, align 8, !tbaa !86
  %235 = icmp ult i64 %234, 16
  call void @llvm.assume(i1 %235)
  br label %237

236:                                              ; preds = %229
  call void @_ZdlPv(ptr noundef %231) #26
  br label %237

237:                                              ; preds = %236, %233, %207
  %238 = phi { ptr, i32 } [ %208, %207 ], [ %230, %233 ], [ %230, %236 ]
  %239 = load ptr, ptr %10, align 8, !tbaa !100
  %240 = icmp eq ptr %239, %91
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i64, ptr %92, align 8, !tbaa !86
  %243 = icmp ult i64 %242, 16
  call void @llvm.assume(i1 %243)
  br label %245

244:                                              ; preds = %237
  call void @_ZdlPv(ptr noundef %239) #26
  br label %245

245:                                              ; preds = %244, %241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #24
  br label %247

246:                                              ; preds = %206, %70
  ret void

247:                                              ; preds = %245, %89
  %248 = phi { ptr, i32 } [ %82, %89 ], [ %238, %245 ]
  resume { ptr, i32 } %248
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !189 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !190

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret ptr @.str.18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar3dupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  invoke void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %4)
          to label %5 unwind label %6, !prof !192

5:                                                ; preds = %1
  ret ptr %2

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #26
  resume { ptr, i32 } %7
}

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 comdat align 2 !prof !193 {
  ret i1 false
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 comdat align 2 !prof !194 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18cDynamicExpression7Functor10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds ptr, ptr %2, i64 19
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !196
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport7LoopVar13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 76
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6XMLDocD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #12 comdat align 2 !prof !68 {
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret ptr @.str.19
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc3dupEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
  %3 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !197, !range !109, !noundef !110
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6XMLDocE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %2, i64 0, i32 1
  store i8 %4, ptr %5, align 8, !tbaa !197
  ret ptr %2
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !197, !range !109, !noundef !110
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.21, ptr @.str.20
  ret ptr %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport6XMLDoc13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 88
}

; Function Attrs: nounwind
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport11ModuleIndexD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 !prof !68 {
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret ptr @.str.1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex3dupEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport11ModuleIndexE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !69
  ret ptr %2
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret ptr @.str.18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport11ModuleIndex13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 76
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport12ParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport12ParameterRefD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !103

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
  %3 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !104, !range !109, !noundef !110
  %7 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !107, !range !109, !noundef !110
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !69
  %9 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %2, i64 0, i32 3, i32 2
  store ptr %10, ptr %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %2, i64 0, i32 3, i32 1
  store i64 0, ptr %11, align 8, !tbaa !86
  store i8 0, ptr %10, align 1, !tbaa !89
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %4, i64 noundef %12)
          to label %23 unwind label %14, !prof !103

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = load ptr, ptr %9, align 8, !tbaa !100
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, ptr %11, align 8, !tbaa !86
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %16) #26
  br label %22

22:                                               ; preds = %21, %18
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  tail call void @_ZdlPv(ptr noundef %2) #26
  resume { ptr, i32 } %15

23:                                               ; preds = %1
  %24 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %2, i64 0, i32 1
  store i8 %6, ptr %24, align 8, !tbaa !104
  %25 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %2, i64 0, i32 2
  store i8 %8, ptr %25, align 1, !tbaa !107
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 !prof !201 {
  ret ptr @.str.18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport12ParameterRef13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 42
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport25SiblingModuleParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !86
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #26
  br label %21

21:                                               ; preds = %16, %20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport25SiblingModuleParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !86
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #26
  br label %21

21:                                               ; preds = %16, %20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef3dupEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
  %3 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !117, !range !109, !noundef !110
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !119, !range !109, !noundef !110
  %12 = icmp ne i8 %11, 0
  invoke void @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %4, ptr noundef %6, i1 noundef zeroext %9, i1 noundef zeroext %12)
          to label %13 unwind label %14

13:                                               ; preds = %1
  ret ptr %2

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #26
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !119, !range !109, !noundef !110
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.18, ptr @.str.22
  ret ptr %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport25SiblingModuleParameterRef13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 42
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6SizeofD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6SizeofE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6SizeofD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6SizeofE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !153

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
  %3 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !154, !range !109, !noundef !110
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !156, !range !109, !noundef !110
  %10 = icmp ne i8 %9, 0
  invoke void @_ZN10NEDSupport6SizeofC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4, i1 noundef zeroext %7, i1 noundef zeroext %10)
          to label %11 unwind label %12, !prof !203

11:                                               ; preds = %1
  ret ptr %2

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #26
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 !prof !204 {
  ret ptr @.str.18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport6Sizeof13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  ret i8 76
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !143

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !143

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !86
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #26
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !206

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !86
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #26
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !207
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !68 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !84, !alias.scope !210
  %10 = load ptr, ptr %7, align 8, !tbaa !100
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !86
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !100, !alias.scope !210
  %19 = load i64, ptr %11, align 8, !tbaa !89
  store i64 %19, ptr %9, align 8, !tbaa !89, !alias.scope !210
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !86
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !86, !alias.scope !210
  store ptr %11, ptr %7, align 8, !tbaa !100
  store i64 0, ptr %21, align 8, !tbaa !86
  store i8 0, ptr %11, align 8, !tbaa !89
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !86, !noalias !213
  %27 = load i64, ptr %23, align 8, !tbaa !86, !noalias !213
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !100, !noalias !213
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !84, !alias.scope !213
  %37 = load ptr, ptr %34, align 8, !tbaa !100
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !86
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !100, !alias.scope !213
  %46 = load i64, ptr %38, align 8, !tbaa !89
  store i64 %46, ptr %36, align 8, !tbaa !89, !alias.scope !213
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !86
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !86, !alias.scope !213
  store ptr %38, ptr %34, align 8, !tbaa !100
  store i64 0, ptr %48, align 8, !tbaa !86
  store i8 0, ptr %38, align 8, !tbaa !89
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %52 = load ptr, ptr %3, align 8, !tbaa !100
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !86
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #26
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !100
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !86
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #26
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !100
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !86
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #26
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !100
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !86
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #26
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !100
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !86
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #26
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !216, !range !109, !noundef !110
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !217
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

declare void @_ZN18cDynamicExpression5ValueaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !189 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 2
  store ptr %4, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %5, align 8, !tbaa !86
  store i8 0, ptr %4, align 8, !tbaa !89
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %6)
          to label %8 unwind label %9, !prof !190

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load ptr, ptr %3, align 8, !tbaa !100
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, ptr %5, align 8, !tbaa !86
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %17

17:                                               ; preds = %13, %16
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !98
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !99

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !100
  %11 = load i64, ptr %4, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !100
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !101

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !89
  store i8 %16, ptr %14, align 1, !tbaa !89
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !219
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !98
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !86
  %21 = load ptr, ptr %0, align 8, !tbaa !100
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !98
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !221

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !100
  %11 = load i64, ptr %4, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !100
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !222

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !89
  store i8 %16, ptr %14, align 1, !tbaa !89
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !223
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !98
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !86
  %21 = load ptr, ptr %0, align 8, !tbaa !100
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_nedsupport.cc() #20 section ".text.startup" !prof !205 !PGOFuncName !224 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind memory(read) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!67}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!35 = !{ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, ptr @strlen, i64 55}
!36 = !{ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 55}
!37 = !{ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN18cDynamicExpression5ValueaSERK4cPar, i64 6703}
!38 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @strcmp, i64 27706}
!39 = !{ptr @_ZN10NEDSupport6SizeofC2EPKcbb, ptr @strlen, i64 8}
!40 = !{ptr @_ZN10NEDSupport6SizeofC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 8}
!41 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__dynamic_cast, i64 984}
!42 = !{ptr @_ZN10NEDSupport7LoopVarD0Ev, ptr @_ZN7cObjectD2Ev, i64 70}
!43 = !{ptr @_ZN10NEDSupport7LoopVarD0Ev, ptr @_ZdlPv, i64 70}
!44 = !{ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_Znwm, i64 35}
!45 = !{ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_ZN10NEDSupport7LoopVarC2EPKc, i64 35}
!46 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport7LoopVar11getArgTypesEv, i64 27466}
!47 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport12ParameterRef11getArgTypesEv, i64 6703}
!48 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @_ZNK10NEDSupport6Sizeof11getArgTypesEv, i64 984}
!49 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @strlen, i64 35153}
!50 = !{ptr @_ZN10NEDSupport12ParameterRefD0Ev, ptr @_ZN7cObjectD2Ev, i64 9958}
!51 = !{ptr @_ZN10NEDSupport12ParameterRefD0Ev, ptr @_ZdlPv, i64 9958}
!52 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_Znwm, i64 9903}
!53 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @strlen, i64 9903}
!54 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 9903}
!55 = !{ptr @_ZN10NEDSupport6SizeofD0Ev, ptr @_ZN7cObjectD2Ev, i64 8}
!56 = !{ptr @_ZN10NEDSupport6SizeofD0Ev, ptr @_ZdlPv, i64 8}
!57 = !{ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_Znwm, i64 4}
!58 = !{ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_ZN10NEDSupport6SizeofC2EPKcbb, i64 4}
!59 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!60 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!61 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @strlen, i64 70}
!62 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 70}
!63 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!64 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!65 = !{ptr @_GLOBAL__sub_I_nedsupport.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!66 = !{ptr @_GLOBAL__sub_I_nedsupport.cc, ptr @__cxa_atexit, i64 1}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!73, !83, i64 168}
!73 = !{!"_ZTS7cModule", !74, i64 0, !80, i64 104, !83, i64 112, !80, i64 120, !80, i64 128, !80, i64 136, !80, i64 144, !83, i64 152, !80, i64 160, !83, i64 168, !83, i64 172}
!74 = !{!"_ZTS10cComponent", !75, i64 0, !80, i64 56, !82, i64 64, !80, i64 72, !82, i64 80, !82, i64 82, !80, i64 88, !80, i64 96}
!75 = !{!"_ZTS12cDefaultList", !76, i64 0, !80, i64 40, !83, i64 48, !83, i64 52}
!76 = !{!"_ZTS23cNoncopyableOwnedObject", !77, i64 0}
!77 = !{!"_ZTS12cOwnedObject", !78, i64 0, !80, i64 24, !83, i64 32}
!78 = !{!"_ZTS12cNamedObject", !79, i64 0, !80, i64 8, !82, i64 16, !82, i64 18}
!79 = !{!"_ZTS7cObject"}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !71, i64 0}
!82 = !{!"short", !81, i64 0}
!83 = !{!"int", !81, i64 0}
!84 = !{!85, !80, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!86 = !{!87, !88, i64 8}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !85, i64 0, !88, i64 8, !81, i64 16}
!88 = !{!"long", !81, i64 0}
!89 = !{!81, !81, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSN18cDynamicExpression5ValueE", !92, i64 0, !93, i64 4, !94, i64 8, !80, i64 16, !87, i64 24, !80, i64 56}
!92 = !{!"_ZTSN18cDynamicExpression5ValueUt_E", !81, i64 0}
!93 = !{!"bool", !81, i64 0}
!94 = !{!"double", !81, i64 0}
!95 = !{!91, !94, i64 8}
!96 = !{!91, !80, i64 16}
!97 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!98 = !{!88, !88, i64 0}
!99 = !{!"branch_weights", i32 1257662, i32 631781}
!100 = !{!87, !80, i64 0}
!101 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!102 = !{!"function_entry_count", i64 55}
!103 = !{!"branch_weights", i32 9958, i32 0}
!104 = !{!105, !93, i64 8}
!105 = !{!"_ZTSN10NEDSupport12ParameterRefE", !106, i64 0, !93, i64 8, !93, i64 9, !87, i64 16}
!106 = !{!"_ZTSN18cDynamicExpression7FunctorE", !79, i64 0}
!107 = !{!105, !93, i64 9}
!108 = !{!"function_entry_count", i64 6703}
!109 = !{i8 0, i8 2}
!110 = !{}
!111 = !{!"branch_weights", i32 6703, i32 0}
!112 = !{!"branch_weights", i32 0, i32 6703}
!113 = !{!"VP", i32 0, i64 6703, i64 -4839500040655519302, i64 6703}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!116 = distinct !{!116, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!117 = !{!118, !93, i64 8}
!118 = !{!"_ZTSN10NEDSupport25SiblingModuleParameterRefE", !106, i64 0, !93, i64 8, !87, i64 16, !93, i64 48, !87, i64 56}
!119 = !{!118, !93, i64 48}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!122 = distinct !{!122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!128 = distinct !{!128, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!131 = distinct !{!131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!134 = distinct !{!134, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!137 = distinct !{!137, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!138 = !{!"function_entry_count", i64 900}
!139 = !{!83, !83, i64 0}
!140 = !{!80, !80, i64 0}
!141 = !{!"function_entry_count", i64 35978}
!142 = !{!"function_entry_count", i64 27466}
!143 = !{!"branch_weights", i32 1, i32 0}
!144 = !{!"branch_weights", i32 0, i32 27706}
!145 = distinct !{!145, !146, !147}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !{!"branch_weights", i32 27466, i32 240}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!151 = distinct !{!151, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!152 = !{!"function_entry_count", i64 8}
!153 = !{!"branch_weights", i32 8, i32 0}
!154 = !{!155, !93, i64 8}
!155 = !{!"_ZTSN10NEDSupport6SizeofE", !106, i64 0, !93, i64 8, !93, i64 9, !87, i64 16}
!156 = !{!155, !93, i64 9}
!157 = !{!"function_entry_count", i64 984}
!158 = !{!"branch_weights", i32 492, i32 492}
!159 = !{!"VP", i32 0, i64 492, i64 903573696113973049, i64 492}
!160 = !{!"branch_weights", i32 0, i32 984}
!161 = !{!"VP", i32 0, i64 984, i64 433258945401154649, i64 984}
!162 = !{!"branch_weights", i32 984, i32 0}
!163 = !{!"VP", i32 0, i64 984, i64 -904603431929104592, i64 984}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!166 = distinct !{!166, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!169 = distinct !{!169, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!170 = !{!91, !80, i64 56}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!173 = distinct !{!173, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!176 = distinct !{!176, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!179 = distinct !{!179, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!182 = distinct !{!182, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!185 = distinct !{!185, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!188 = distinct !{!188, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!189 = !{!"function_entry_count", i64 70}
!190 = !{!"branch_weights", i32 70, i32 0}
!191 = !{!"function_entry_count", i64 35}
!192 = !{!"branch_weights", i32 35, i32 0}
!193 = !{!"function_entry_count", i64 26398}
!194 = !{!"function_entry_count", i64 54932}
!195 = !{!"function_entry_count", i64 35153}
!196 = !{!"VP", i32 0, i64 35153, i64 -806810802839138395, i64 27466, i64 -6921110094366097119, i64 6703, i64 -3512467694094833786, i64 984}
!197 = !{!198, !93, i64 8}
!198 = !{!"_ZTSN10NEDSupport6XMLDocE", !106, i64 0, !93, i64 8}
!199 = !{!"function_entry_count", i64 9958}
!200 = !{!"function_entry_count", i64 9903}
!201 = !{!"function_entry_count", i64 13406}
!202 = !{!"function_entry_count", i64 4}
!203 = !{!"branch_weights", i32 4, i32 0}
!204 = !{!"function_entry_count", i64 1968}
!205 = !{!"function_entry_count", i64 1}
!206 = !{!"branch_weights", i32 0, i32 1}
!207 = !{!208, !83, i64 8}
!208 = !{!"_ZTS10cException", !209, i64 0, !83, i64 8, !87, i64 16, !93, i64 48, !87, i64 56, !87, i64 88, !83, i64 120}
!209 = !{!"_ZTSSt9exception"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!212 = distinct !{!212, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!215 = distinct !{!215, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!216 = !{!208, !93, i64 48}
!217 = !{!208, !83, i64 120}
!218 = !{!"function_entry_count", i64 1889443}
!219 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!220 = !{!"function_entry_count", i64 1974042}
!221 = !{!"branch_weights", i32 1399683, i32 574359}
!222 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!223 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!224 = !{!"simulator/nedsupport.cc;_GLOBAL__sub_I_nedsupport.cc"}
