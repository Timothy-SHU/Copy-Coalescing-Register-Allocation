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
%"class.std::allocator" = type { i8 }
%"class.NEDSupport::ParameterRef" = type { %"class.cDynamicExpression::Functor", i8, i8, %"class.std::__cxx11::basic_string" }
%"class.cDynamicExpression::Functor" = type { %class.cObject }
%"class.NEDSupport::SiblingModuleParameterRef" = type { %"class.cDynamicExpression::Functor", i8, %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::LoopVar" = type { %"class.cDynamicExpression::Functor", %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::Sizeof" = type { %"class.cDynamicExpression::Functor", i8, i8, %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::XMLDoc" = type <{ %"class.cDynamicExpression::Functor", i8, [7 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%struct._Guard = type { ptr }

$_ZN18cDynamicExpression7FunctorC2Ev = comdat any

$_ZNK7cModule8getIndexEv = comdat any

$_ZN18cDynamicExpression5ValueC2Ed = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN18cDynamicExpression5ValueC2ERK4cPar = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN18cDynamicExpression5ValueC2El = comdat any

$_ZNK7cModule4sizeEv = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZN18cDynamicExpression5ValueC2EP11cXMLElement = comdat any

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

$_ZN7cObjectC2Ev = comdat any

$_ZN18cDynamicExpression7FunctorD0Ev = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

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

$__clang_call_terminate = comdat any

$_ZN18cDynamicExpression5ValueaSEd = comdat any

$_ZN18cDynamicExpression5ValueaSEl = comdat any

$_ZNK7cModule13getVectorSizeEv = comdat any

$_ZN18cDynamicExpression5ValueaSEP11cXMLElement = comdat any

$_ZN10NEDSupport7LoopVarC2EPKc = comdat any

$_ZN10NEDSupport6XMLDocC2Eb = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTSN18cDynamicExpression7FunctorE = comdat any

$_ZTIN18cDynamicExpression7FunctorE = comdat any

$_ZTVN18cDynamicExpression7FunctorE = comdat any

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
@_ZTVN18cDynamicExpression7FunctorE = linkonce_odr dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN18cDynamicExpression7FunctorE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN18cDynamicExpression7FunctorD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @__cxa_pure_virtual, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV7cObject = external unnamed_addr constant { [21 x ptr] }, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"xmldoc\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_nedsupport.cc, ptr null }]

@_ZN10NEDSupport11ModuleIndexC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10NEDSupport11ModuleIndexC2Ev
@_ZN10NEDSupport12ParameterRefC1EPKcbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb
@_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1), ptr @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb
@_ZN10NEDSupport6SizeofC1EPKcbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN10NEDSupport6SizeofC2EPKcbb

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #17
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndexC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 !prof !97 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport11ModuleIndexE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN18cDynamicExpression7FunctorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndex8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %7
  %11 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef %2, ptr noundef nonnull @.str) #17
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #18
  resume { ptr, i32 } %14

15:                                               ; preds = %7
  %16 = tail call noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %8) #17
  %17 = sitofp i32 %16 to double
  tail call void @_ZN18cDynamicExpression5ValueC2Ed(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %17) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #7 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !102
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueC2Ed(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN18cDynamicExpression5ValueaSEd(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport11ModuleIndex3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #21
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #17
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport12ParameterRefC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %5 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %6 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1) #17
          to label %7 unwind label %12

7:                                                ; preds = %4
  %8 = zext i1 %3 to i8
  %9 = zext i1 %2 to i8
  %10 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 1
  store i8 %9, ptr %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 2
  store i8 %8, ptr %11, align 1, !tbaa !122
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %6 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !115, !range !124, !noundef !125
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !126

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !98
  %11 = getelementptr inbounds ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %13, %9 ], [ %2, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22, !prof !127

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef %2, i32 noundef 15) #17
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #18
  resume { ptr, i32 } %21

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  %24 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  %25 = load ptr, ptr %15, align 8, !tbaa !98
  %26 = getelementptr inbounds ptr, ptr %25, i64 43
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr %27(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %24) #17
  tail call void @_ZN18cDynamicExpression5ValueC2ERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %28) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueC2ERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  invoke void @_ZN18cDynamicExpression5ValueaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport12ParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !122, !range !124, !noundef !125
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %11 unwind label %14

11:                                               ; preds = %10
  %12 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
          to label %13 unwind label %16

13:                                               ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %22

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %4
  %21 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %1, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %21) #17
  br label %22

22:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !128 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport25SiblingModuleParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1) #17
          to label %9 unwind label %16

9:                                                ; preds = %5
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2) #17
          to label %11 unwind label %16

11:                                               ; preds = %9
  %12 = zext i1 %4 to i8
  %13 = zext i1 %3 to i8
  %14 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 1
  store i8 %13, ptr %14, align 8, !tbaa !129
  %15 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  store i8 %12, ptr %15, align 8, !tbaa !131
  ret void

16:                                               ; preds = %9, %5
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !129, !range !124, !noundef !125
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !98
  %12 = getelementptr inbounds ptr, ptr %11, i64 37
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi ptr [ %14, %10 ], [ %2, %5 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @__dynamic_cast(ptr nonnull %16, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef %2, i32 noundef 15) #17
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #18
  br label %64

26:                                               ; preds = %18
  %27 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !131, !range !124, !noundef !125
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !132
  %33 = fptosi double %32 to i32
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi i32 [ %33, %30 ], [ -1, %26 ]
  %36 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  %37 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #20
  %38 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %19, ptr noundef %37, i32 noundef %35) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %41 = icmp eq i32 %35, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  br label %45

43:                                               ; preds = %40
  %44 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #20
  call void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.3, ptr noundef %44, i32 noundef %35) #17
  br label %45

45:                                               ; preds = %43, %42
  %46 = call ptr @__cxa_allocate_exception(i64 128) #18
  %47 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  %48 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %49 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %48) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %46, ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %47, ptr noundef %49) #17
          to label %50 unwind label %51

50:                                               ; preds = %45
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
          to label %66 unwind label %53

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %46) #18
  br label %55

53:                                               ; preds = %50
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %64

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  %59 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %58) #20
  %60 = load ptr, ptr %38, align 8, !tbaa !98
  %61 = getelementptr inbounds ptr, ptr %60, i64 43
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef nonnull align 8 dereferenceable(24) ptr %62(ptr noundef nonnull align 8 dereferenceable(104) %38, ptr noundef %59) #17
  tail call void @_ZN18cDynamicExpression5ValueC2ERK4cPar(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %63) #17
  ret void

64:                                               ; preds = %55, %24
  %65 = phi { ptr, i32 } [ %56, %55 ], [ %25, %24 ]
  resume { ptr, i32 } %65

66:                                               ; preds = %50
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport25SiblingModuleParameterRef3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !131, !range !124, !noundef !125
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %13 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.5) #17
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6) #17
          to label %15 unwind label %20

15:                                               ; preds = %14
  %16 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %16) #17
          to label %17 unwind label %22

17:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %34

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %35

28:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  %29 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 2
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.7) #17
  %30 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %1, i64 0, i32 4
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %30) #17
          to label %31 unwind label %32

31:                                               ; preds = %28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %34

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %35

34:                                               ; preds = %31, %17
  ret void

35:                                               ; preds = %32, %26
  %36 = phi { ptr, i32 } [ %27, %26 ], [ %33, %32 ]
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !136 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !137 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #17
          to label %7 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  resume { ptr, i32 } %6

7:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN10NEDSupport7LoopVar7pushVarEPKc(ptr noundef %0) local_unnamed_addr #8 align 2 !prof !138 {
  %2 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [32 x ptr], ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 0, i64 %3
  store ptr %0, ptr %4, align 8, !tbaa !140
  %5 = add nsw i32 %2, 1
  store i32 %5, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %6 = getelementptr inbounds [32 x i64], ptr @_ZN10NEDSupport7LoopVar4varsE, i64 0, i64 %3
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN10NEDSupport7LoopVar6popVarEv() local_unnamed_addr #8 align 2 !prof !138 {
  %1 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN10NEDSupport7LoopVar5resetEv() local_unnamed_addr #9 align 2 !prof !141 {
  store i32 0, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %6 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %1, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  %8 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !139
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %14, label %20, !prof !143

10:                                               ; preds = %14
  %11 = zext nneg i32 %8 to i64
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %20, label %14, !prof !144, !llvm.loop !145

14:                                               ; preds = %5, %10
  %15 = phi i64 [ %12, %10 ], [ 0, %5 ]
  %16 = getelementptr inbounds [32 x ptr], ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %10, !prof !147

20:                                               ; preds = %10, %5
  %21 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  %22 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %22) #17
          to label %23 unwind label %24

23:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #18
  resume { ptr, i32 } %25

26:                                               ; preds = %14
  %27 = getelementptr inbounds [32 x i64], ptr @_ZN10NEDSupport7LoopVar4varsE, i64 0, i64 %15
  %28 = load i64, ptr %27, align 8, !tbaa !148
  tail call void @_ZN18cDynamicExpression5ValueC2El(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %28) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueC2El(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN18cDynamicExpression5ValueaSEl(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport7LoopVar3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %7 unwind label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %1, i64 0, i32 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
          to label %9 unwind label %12

9:                                                ; preds = %7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport6SizeofC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6SizeofE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %5 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %6 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1) #17
          to label %7 unwind label %12

7:                                                ; preds = %4
  %8 = zext i1 %3 to i8
  %9 = zext i1 %2 to i8
  %10 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 1
  store i8 %9, ptr %10, align 8, !tbaa !151
  %11 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 2
  store i8 %8, ptr %11, align 1, !tbaa !153
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %6 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !151, !range !124, !noundef !125
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !155

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !98
  %11 = getelementptr inbounds ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %13, %9 ], [ %2, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @__dynamic_cast(ptr nonnull %15, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25, !prof !156

20:                                               ; preds = %14, %17
  %21 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef %2, i32 noundef 15) #17
          to label %22 unwind label %23

22:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %17
  %26 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 3
  %27 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  %28 = load ptr, ptr %18, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 61
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef %27, i32 noundef -1) #17
  %32 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  br i1 %31, label %33, label %39, !prof !157

33:                                               ; preds = %25
  %34 = load ptr, ptr %18, align 8, !tbaa !98
  %35 = getelementptr inbounds ptr, ptr %34, i64 68
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef %32) #17
  %38 = sext i32 %37 to i64
  tail call void @_ZN18cDynamicExpression5ValueC2El(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %38) #17
  br label %51

39:                                               ; preds = %25
  %40 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef %32, i32 noundef 0) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  %44 = tail call noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef %43, i32 noundef -1) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  tail call void @_ZN18cDynamicExpression5ValueC2El(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 1) #17
  br label %50

47:                                               ; preds = %39
  %48 = tail call noundef i32 @_ZNK7cModule4sizeEv(ptr noundef nonnull align 8 dereferenceable(176) %40) #17
  br label %50

49:                                               ; preds = %42
  tail call void @_ZN18cDynamicExpression5ValueC2El(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0) #17
  br label %50

50:                                               ; preds = %47, %49, %46
  tail call void @llvm.assume(i1 %41)
  br label %51

51:                                               ; preds = %50, %33
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule4sizeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %2 = tail call noundef i32 @_ZNK7cModule13getVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport6Sizeof3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %8 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !153, !range !124, !noundef !125
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @.str.11, ptr @.str.10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %11, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
          to label %12 unwind label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %1, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) #17
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12) #17
          to label %15 unwind label %20

15:                                               ; preds = %14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport6XMLDoc8evaluateEP10cComponentPN18cDynamicExpression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.cDynamicExpression::Value") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %6 = icmp eq i32 %4, 1
  %7 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #17
  %8 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 0, i32 4
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  br i1 %6, label %10, label %22

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 8, !tbaa !98
  %12 = getelementptr inbounds ptr, ptr %11, i64 29
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef %9, ptr noundef null) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  %18 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.13, ptr noundef %18) #17
          to label %19 unwind label %20

19:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %39

22:                                               ; preds = %5
  %23 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %3, i64 1, i32 4
  %24 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  %25 = load ptr, ptr %7, align 8, !tbaa !98
  %26 = getelementptr inbounds ptr, ptr %25, i64 29
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef %9, ptr noundef %24) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  %32 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  %33 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.14, ptr noundef %32, ptr noundef %33) #17
          to label %34 unwind label %35

34:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %22, %10
  %38 = phi ptr [ %14, %10 ], [ %28, %22 ]
  tail call void @_ZN18cDynamicExpression5ValueC2EP11cXMLElement(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %38) #17
  ret void

39:                                               ; preds = %35, %20
  %40 = phi ptr [ %31, %35 ], [ %17, %20 ]
  %41 = phi { ptr, i32 } [ %36, %35 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %40) #18
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #7 comdat align 2 !prof !158 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !140
  ret ptr %1
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueC2EP11cXMLElement(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN18cDynamicExpression5ValueaSEP11cXMLElement(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NEDSupport6XMLDoc3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::allocator", align 1
  %13 = icmp eq i32 %3, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %16 unwind label %20

16:                                               ; preds = %15
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12) #17
          to label %17 unwind label %22

17:                                               ; preds = %16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %53

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %54

28:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %12) #17
          to label %29 unwind label %35

29:                                               ; preds = %28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %30 unwind label %37

30:                                               ; preds = %29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.16) #17
          to label %31 unwind label %39

31:                                               ; preds = %30
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %32) #17
          to label %33 unwind label %41

33:                                               ; preds = %31
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.12) #17
          to label %34 unwind label %43

34:                                               ; preds = %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %53

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %51

37:                                               ; preds = %29
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %49

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %47

41:                                               ; preds = %31
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %33
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %54

53:                                               ; preds = %34, %17
  ret void

54:                                               ; preds = %51, %26
  %55 = phi { ptr, i32 } [ %27, %26 ], [ %52, %51 ]
  resume { ptr, i32 } %55
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10NEDSupport7LoopVarD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar3dupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  invoke void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %4) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %2

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !160 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport7LoopVar11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !161 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18cDynamicExpression7Functor10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !162 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds ptr, ptr %2, i64 19
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport7LoopVar13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 76
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6XMLDocD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret ptr @.str.19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc3dupEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
  %3 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !163, !range !124, !noundef !125
  %5 = icmp ne i8 %4, 0
  invoke void @_ZN10NEDSupport6XMLDocC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %2, i1 noundef zeroext %5) #17
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6XMLDoc11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !163, !range !124, !noundef !125
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.21, ptr @.str.20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport6XMLDoc13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 88
}

; Function Attrs: nounwind optsize
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport11ModuleIndexD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex3dupEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
  invoke void @_ZN10NEDSupport11ModuleIndexC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport11ModuleIndex11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport11ModuleIndex13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 76
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport12ParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport12ParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport12ParameterRefD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10NEDSupport12ParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
  %3 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 3
  %4 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %5 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !115, !range !124, !noundef !125
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %"class.NEDSupport::ParameterRef", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !122, !range !124, !noundef !125
  %10 = icmp ne i8 %9, 0
  invoke void @_ZN10NEDSupport12ParameterRefC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4, i1 noundef zeroext %7, i1 noundef zeroext %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %1
  ret ptr %2

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport12ParameterRef11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !166 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport12ParameterRef13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport25SiblingModuleParameterRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport25SiblingModuleParameterRefD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10NEDSupport25SiblingModuleParameterRefD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef3dupEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
  %3 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %5 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 4
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %7 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !129, !range !124, !noundef !125
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !131, !range !124, !noundef !125
  %12 = icmp ne i8 %11, 0
  invoke void @_ZN10NEDSupport25SiblingModuleParameterRefC2EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %4, ptr noundef %6, i1 noundef zeroext %9, i1 noundef zeroext %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %1
  ret ptr %2

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport25SiblingModuleParameterRef11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::SiblingModuleParameterRef", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !131, !range !124, !noundef !125
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.18, ptr @.str.22
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport25SiblingModuleParameterRef13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6SizeofD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6SizeofE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6SizeofD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10NEDSupport6SizeofD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
  %3 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 3
  %4 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %5 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !151, !range !124, !noundef !125
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %"class.NEDSupport::Sizeof", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !153, !range !124, !noundef !125
  %10 = icmp ne i8 %9, 0
  invoke void @_ZN10NEDSupport6SizeofC2EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4, i1 noundef zeroext %7, i1 noundef zeroext %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %1
  ret ptr %2

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10NEDSupport6Sizeof11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !168 {
  ret ptr @.str.18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK10NEDSupport6Sizeof13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  ret i8 76
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !169 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTV7cObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression7FunctorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !170 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #17
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #23
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !172
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17) #17
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #17
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !175, !range !124, !noundef !125
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !176
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueaSEd(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1) local_unnamed_addr #7 comdat align 2 !prof !177 {
  store i32 68, ptr %0, align 8, !tbaa !178
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !179
  ret void
}

; Function Attrs: optsize
declare void @_ZN18cDynamicExpression5ValueaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueaSEl(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !149 {
  store i32 68, ptr %0, align 8, !tbaa !178
  %3 = sitofp i64 %1 to double
  %4 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 2
  store double %3, ptr %4, align 8, !tbaa !132
  %5 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule13getVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !180
  %4 = icmp slt i32 %3, 0
  %5 = select i1 %4, i32 1, i32 %3
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression5ValueaSEP11cXMLElement(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !97 {
  store i32 88, ptr %0, align 8, !tbaa !178
  %3 = getelementptr inbounds %"struct.cDynamicExpression::Value", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6XMLDocC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6XMLDocE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !prof !183 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  store i64 %6, ptr %4, align 8, !tbaa !148
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !185

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #17
  %10 = load i64, ptr %4, align 8, !tbaa !148
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #17
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #20
  store ptr null, ptr %5, align 8, !tbaa !186
  %15 = load i64, ptr %4, align 8, !tbaa !148
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #17
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !184 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !140
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 !prof !184 {
  store ptr %1, ptr %0, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !186
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !188

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #25
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !184 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat !prof !184 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_nedsupport.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind memory(read) }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { builtin nounwind optsize }
attributes #24 = { builtin optsize allocsize(0) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!96}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!35 = !{ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, ptr @_ZN18cDynamicExpression7FunctorC2Ev, i64 9958}
!36 = !{ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 9958}
!37 = !{ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 9958}
!38 = !{ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez, i64 1}
!40 = !{ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 6702}
!41 = !{ptr @_ZN10NEDSupport12ParameterRef8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN18cDynamicExpression5ValueC2ERK4cPar, i64 6702}
!42 = !{ptr @_ZN18cDynamicExpression5ValueC2ERK4cPar, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 6703}
!43 = !{ptr @_ZN18cDynamicExpression5ValueC2ERK4cPar, ptr @_ZN18cDynamicExpression5ValueaSERK4cPar, i64 6703}
!44 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!45 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!46 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!47 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!48 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 31236}
!49 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 31236}
!50 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 27681}
!51 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @strcmp, i64 27491}
!52 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__cxa_allocate_exception, i64 215}
!53 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 215}
!54 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__cxa_throw, i64 107}
!55 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__cxa_free_exception, i64 107}
!56 = !{ptr @_ZN10NEDSupport7LoopVar8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN18cDynamicExpression5ValueC2El, i64 27251}
!57 = !{ptr @_ZN18cDynamicExpression5ValueC2El, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 28450}
!58 = !{ptr @_ZN18cDynamicExpression5ValueC2El, ptr @_ZN18cDynamicExpression5ValueaSEl, i64 28450}
!59 = !{ptr @_ZN10NEDSupport6SizeofC2EPKcbb, ptr @_ZN18cDynamicExpression7FunctorC2Ev, i64 8}
!60 = !{ptr @_ZN10NEDSupport6SizeofC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 8}
!61 = !{ptr @_ZN10NEDSupport6SizeofC2EPKcbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 8}
!62 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @__dynamic_cast, i64 984}
!63 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1968}
!64 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN18cDynamicExpression5ValueC2El, i64 983}
!65 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZN7cModule12getSubmoduleEPKci, i64 1}
!66 = !{ptr @_ZN10NEDSupport6Sizeof8evaluateEP10cComponentPN18cDynamicExpression5ValueEi, ptr @_ZNK7cModule4sizeEv, i64 1}
!67 = !{ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_Znwm, i64 35}
!68 = !{ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 35}
!69 = !{ptr @_ZNK10NEDSupport7LoopVar3dupEv, ptr @_ZN10NEDSupport7LoopVarC2EPKc, i64 35}
!70 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @strlen, i64 35153}
!71 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_Znwm, i64 9903}
!72 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 9903}
!73 = !{ptr @_ZNK10NEDSupport12ParameterRef3dupEv, ptr @_ZN10NEDSupport12ParameterRefC2EPKcbb, i64 9903}
!74 = !{ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_Znwm, i64 4}
!75 = !{ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 4}
!76 = !{ptr @_ZNK10NEDSupport6Sizeof3dupEv, ptr @_ZN10NEDSupport6SizeofC2EPKcbb, i64 4}
!77 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!78 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!79 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!80 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZN18cDynamicExpression7FunctorC2Ev, i64 70}
!81 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 70}
!82 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 70}
!83 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!84 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!85 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!86 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!87 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!88 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!89 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!90 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!91 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!92 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!93 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!94 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!95 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !100, i64 0}
!100 = !{!"Simple C++ TBAA"}
!101 = !{!"function_entry_count", i64 8852}
!102 = !{!103, !113, i64 168}
!103 = !{!"_ZTS7cModule", !104, i64 0, !110, i64 104, !113, i64 112, !110, i64 120, !110, i64 128, !110, i64 136, !110, i64 144, !113, i64 152, !110, i64 160, !113, i64 168, !113, i64 172}
!104 = !{!"_ZTS10cComponent", !105, i64 0, !110, i64 56, !112, i64 64, !110, i64 72, !112, i64 80, !112, i64 82, !110, i64 88, !110, i64 96}
!105 = !{!"_ZTS12cDefaultList", !106, i64 0, !110, i64 40, !113, i64 48, !113, i64 52}
!106 = !{!"_ZTS23cNoncopyableOwnedObject", !107, i64 0}
!107 = !{!"_ZTS12cOwnedObject", !108, i64 0, !110, i64 24, !113, i64 32}
!108 = !{!"_ZTS12cNamedObject", !109, i64 0, !110, i64 8, !112, i64 16, !112, i64 18}
!109 = !{!"_ZTS7cObject"}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !100, i64 0}
!112 = !{!"short", !111, i64 0}
!113 = !{!"int", !111, i64 0}
!114 = !{!"function_entry_count", i64 9958}
!115 = !{!116, !118, i64 8}
!116 = !{!"_ZTSN10NEDSupport12ParameterRefE", !117, i64 0, !118, i64 8, !118, i64 9, !119, i64 16}
!117 = !{!"_ZTSN18cDynamicExpression7FunctorE", !109, i64 0}
!118 = !{!"bool", !111, i64 0}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !120, i64 0, !121, i64 8, !111, i64 16}
!120 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !110, i64 0}
!121 = !{!"long", !111, i64 0}
!122 = !{!116, !118, i64 9}
!123 = !{!"function_entry_count", i64 6703}
!124 = !{i8 0, i8 2}
!125 = !{}
!126 = !{!"branch_weights", i32 6704, i32 1}
!127 = !{!"branch_weights", i32 1, i32 6704}
!128 = !{!"function_entry_count", i64 2}
!129 = !{!130, !118, i64 8}
!130 = !{!"_ZTSN10NEDSupport25SiblingModuleParameterRefE", !117, i64 0, !118, i64 8, !119, i64 16, !118, i64 48, !119, i64 56}
!131 = !{!130, !118, i64 48}
!132 = !{!133, !135, i64 8}
!133 = !{!"_ZTSN18cDynamicExpression5ValueE", !134, i64 0, !118, i64 4, !135, i64 8, !110, i64 16, !119, i64 24, !110, i64 56}
!134 = !{!"_ZTSN18cDynamicExpression5ValueUt_E", !111, i64 0}
!135 = !{!"double", !111, i64 0}
!136 = !{!"function_entry_count", i64 2107073}
!137 = !{!"function_entry_count", i64 31236}
!138 = !{!"function_entry_count", i64 900}
!139 = !{!113, !113, i64 0}
!140 = !{!110, !110, i64 0}
!141 = !{!"function_entry_count", i64 35978}
!142 = !{!"function_entry_count", i64 27466}
!143 = !{!"branch_weights", i32 127, i32 1}
!144 = !{!"branch_weights", i32 127, i32 3546369}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"branch_weights", i32 27467, i32 241}
!148 = !{!121, !121, i64 0}
!149 = !{!"function_entry_count", i64 28450}
!150 = !{!"function_entry_count", i64 8}
!151 = !{!152, !118, i64 8}
!152 = !{!"_ZTSN10NEDSupport6SizeofE", !117, i64 0, !118, i64 8, !118, i64 9, !119, i64 16}
!153 = !{!152, !118, i64 9}
!154 = !{!"function_entry_count", i64 984}
!155 = !{!"branch_weights", i32 493, i32 493}
!156 = !{!"branch_weights", i32 0, i32 -2147483648}
!157 = !{!"branch_weights", i32 985, i32 1}
!158 = !{!"function_entry_count", i64 21674314260}
!159 = !{!"function_entry_count", i64 35}
!160 = !{!"function_entry_count", i64 26398}
!161 = !{!"function_entry_count", i64 54932}
!162 = !{!"function_entry_count", i64 35153}
!163 = !{!164, !118, i64 8}
!164 = !{!"_ZTSN10NEDSupport6XMLDocE", !117, i64 0, !118, i64 8}
!165 = !{!"function_entry_count", i64 9903}
!166 = !{!"function_entry_count", i64 13406}
!167 = !{!"function_entry_count", i64 4}
!168 = !{!"function_entry_count", i64 1968}
!169 = !{!"function_entry_count", i64 189116523}
!170 = !{!"function_entry_count", i64 235321}
!171 = !{!"function_entry_count", i64 1}
!172 = !{!173, !113, i64 8}
!173 = !{!"_ZTS10cException", !174, i64 0, !113, i64 8, !119, i64 16, !118, i64 48, !119, i64 56, !119, i64 88, !113, i64 120}
!174 = !{!"_ZTSSt9exception"}
!175 = !{!173, !118, i64 48}
!176 = !{!173, !113, i64 120}
!177 = !{!"function_entry_count", i64 6457}
!178 = !{!133, !134, i64 0}
!179 = !{!133, !110, i64 16}
!180 = !{!103, !113, i64 172}
!181 = !{!133, !110, i64 56}
!182 = !{!"function_entry_count", i64 70}
!183 = !{!"function_entry_count", i64 1891507}
!184 = !{!"function_entry_count", i64 1889443}
!185 = !{!"branch_weights", i32 1257663, i32 631782}
!186 = !{!187, !110, i64 0}
!187 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !110, i64 0}
!188 = !{!"branch_weights", i32 1889444, i32 1}
