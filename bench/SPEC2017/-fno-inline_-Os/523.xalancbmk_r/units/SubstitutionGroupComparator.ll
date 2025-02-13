; ModuleID = 'SubstitutionGroupComparator.cpp'
source_filename = "SubstitutionGroupComparator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_75QName16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo11getBlockSetEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@.str = private unnamed_addr constant [32 x i8] c"SubstitutionGroupComparator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %117

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = xor i1 %8, %5
  br i1 %9, label %10, label %117

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  %12 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef %12) #5
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  %16 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %117, label %18

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %0, align 8, !tbaa !39
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %18
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %27 = tail call noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 160, ptr noundef %27) #5
          to label %28 unwind label %29

28:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %26) #6
  resume { ptr, i32 } %30

31:                                               ; preds = %21
  %32 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  %33 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !45
  %34 = icmp eq i32 %32, %33
  %35 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %36 = icmp eq i32 %32, %35
  %37 = select i1 %34, i1 true, i1 %36
  %38 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %39 = icmp eq i32 %32, %38
  %40 = select i1 %37, i1 true, i1 %39
  %41 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %42 = icmp eq i32 %32, %41
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %117, label %44

44:                                               ; preds = %31
  %45 = load ptr, ptr %22, align 8, !tbaa !44
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef %32) #5
  %50 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  %51 = icmp eq ptr %49, null
  br i1 %51, label %117, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %0, align 8, !tbaa !39
  %54 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull %49) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %117, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !47
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(160) %54) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %117, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %54, align 8, !tbaa !47
  %64 = getelementptr inbounds ptr, ptr %63, i64 11
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(160) %54, i32 noundef %32, ptr noundef %50, ptr noundef null, i32 noundef -2) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %117, label %68

68:                                               ; preds = %62
  %69 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %66) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %117, label %71

71:                                               ; preds = %68, %84
  %72 = phi ptr [ %85, %84 ], [ %69, %68 ]
  %73 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %72) #5
  %74 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %73, ptr noundef %74) #5
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %72) #5
  %78 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %72) #5
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %117

84:                                               ; preds = %76, %71
  %85 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %72) #5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %117, label %71, !llvm.loop !49

87:                                               ; preds = %80
  %88 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %66) #5
  %89 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %72) #5
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %66) #5
  %93 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %72) #5
  %94 = icmp eq ptr %92, null
  br i1 %94, label %117, label %95

95:                                               ; preds = %91
  %96 = icmp eq ptr %92, %93
  %97 = and i32 %89, 4
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %98, %96
  br label %117

100:                                              ; preds = %87
  %101 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %88) #5
  %102 = and i32 %101, %89
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %72) #5
  %106 = icmp eq ptr %88, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %104, %112
  %108 = phi ptr [ %113, %112 ], [ %88, %104 ]
  %109 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(176) %108) #5
  %110 = and i32 %109, %101
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %108) #5
  %114 = icmp eq ptr %113, null
  %115 = icmp eq ptr %113, %105
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %107, !llvm.loop !51

117:                                              ; preds = %84, %107, %112, %68, %104, %80, %31, %56, %52, %100, %91, %95, %62, %44, %14, %7, %3
  %118 = phi i1 [ true, %3 ], [ false, %7 ], [ true, %14 ], [ false, %31 ], [ false, %44 ], [ false, %56 ], [ false, %52 ], [ false, %62 ], [ false, %80 ], [ true, %91 ], [ %99, %95 ], [ false, %100 ], [ true, %104 ], [ false, %68 ], [ %111, %112 ], [ %111, %107 ], [ false, %84 ]
  ret i1 %118
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !53

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !54
  %8 = load i16, ptr %1, align 2, !tbaa !54
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !56

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !57

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !54
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !58

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !59

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !54
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !60

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !61

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !54
  %28 = load i16, ptr %26, align 2, !tbaa !54
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !62, !llvm.loop !63

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !69
  ret i32 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #5
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #5
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #5
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !90
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !92
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr nocapture noundef nonnull readnone align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !38 {
  %6 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %7 = xor i1 %4, true
  %8 = icmp eq i32 %6, %3
  %9 = and i1 %8, %7
  br i1 %9, label %55, label %10

10:                                               ; preds = %5
  %11 = or i1 %8, %7
  %12 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4
  %13 = icmp eq i32 %6, %12
  %14 = select i1 %11, i1 true, i1 %13
  %15 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %16 = icmp eq i32 %6, %15
  %17 = select i1 %14, i1 true, i1 %16
  %18 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %19 = icmp eq i32 %6, %18
  %20 = select i1 %17, i1 true, i1 %19
  %21 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %22 = icmp eq i32 %6, %21
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %10
  %25 = tail call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %24
  %28 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #5
  %29 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef %28, i32 noundef %6) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %29) #5
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %37, label %55

34:                                               ; preds = %45
  %35 = add nuw nsw i32 %38, 1
  %36 = icmp eq i32 %35, %32
  br i1 %36, label %55, label %37, !llvm.loop !94

37:                                               ; preds = %31, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %31 ]
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef %38) #5
  %40 = load ptr, ptr %39, align 8, !tbaa !95
  %41 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %40) #5
  %42 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %41) #5
  %43 = icmp eq i32 %42, %3
  %44 = and i1 %43, %7
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = or i1 %43, %7
  %47 = icmp eq i32 %42, %12
  %48 = select i1 %46, i1 true, i1 %47
  %49 = icmp eq i32 %42, %15
  %50 = select i1 %48, i1 true, i1 %49
  %51 = icmp eq i32 %42, %18
  %52 = select i1 %50, i1 true, i1 %51
  %53 = icmp eq i32 %42, %21
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %34, label %55

55:                                               ; preds = %45, %37, %34, %31, %24, %27, %5, %10
  %56 = phi i1 [ true, %10 ], [ true, %5 ], [ false, %24 ], [ false, %27 ], [ false, %31 ], [ true, %45 ], [ true, %37 ], [ false, %34 ]
  ret i1 %56
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !38 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !101
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !103
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !105

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #5
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #6
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #5
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #5
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !114
  %9 = load ptr, ptr %0, align 8, !tbaa !115
  %10 = load ptr, ptr %6, align 8, !tbaa !47
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #5
  store i32 %12, ptr %3, align 4, !tbaa !45
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !117
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !112
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = load ptr, ptr %25, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #5
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !119

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #5
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #5
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #5
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!36 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!40, !41, i64 8}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !42, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !43, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!"function_entry_count", i64 1231717351}
!53 = !{!"branch_weights", i32 621, i32 -1469098093}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !42, i64 0}
!56 = !{!"branch_weights", i32 408901017, i32 1}
!57 = !{!"branch_weights", i32 267, i32 4}
!58 = !{!"branch_weights", i32 1, i32 4}
!59 = !{!"branch_weights", i32 156, i32 112}
!60 = !{!"branch_weights", i32 1, i32 112}
!61 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!62 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!63 = distinct !{!63, !50}
!64 = !{!"function_entry_count", i64 2192223}
!65 = !{!66, !41, i64 32}
!66 = !{!"_ZTSN11xercesc_2_75QNameE", !67, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{!"function_entry_count", i64 6553673}
!69 = !{!66, !46, i64 20}
!70 = !{!"function_entry_count", i64 62}
!71 = !{!66, !41, i64 48}
!72 = !{!73, !41, i64 128}
!73 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !74, i64 0, !77, i64 36, !78, i64 40, !79, i64 44, !80, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !46, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !76, i64 144, !76, i64 145, !76, i64 146}
!74 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !67, i64 0, !41, i64 8, !41, i64 16, !75, i64 24, !46, i64 28, !76, i64 32}
!75 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !42, i64 0}
!76 = !{!"bool", !42, i64 0}
!77 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !42, i64 0}
!78 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !42, i64 0}
!79 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !42, i64 0}
!80 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !42, i64 0}
!81 = !{!"function_entry_count", i64 95}
!82 = !{!74, !41, i64 16}
!83 = !{!"function_entry_count", i64 79}
!84 = !{!73, !46, i64 60}
!85 = !{!"function_entry_count", i64 832911}
!86 = !{!73, !41, i64 80}
!87 = !{!"function_entry_count", i64 495341}
!88 = !{!73, !41, i64 136}
!89 = !{!"function_entry_count", i64 41}
!90 = !{!91, !46, i64 16}
!91 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !67, i64 0, !76, i64 8, !76, i64 9, !76, i64 10, !76, i64 11, !76, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168}
!92 = !{!91, !46, i64 20}
!93 = !{!91, !41, i64 88}
!94 = distinct !{!94, !50}
!95 = !{!41, !41, i64 0}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!98, !41, i64 88}
!98 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !99, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !76, i64 128, !100, i64 136}
!99 = !{!"_ZTSN11xercesc_2_77GrammarE", !67, i64 0}
!100 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !67, i64 0, !41, i64 8, !41, i64 16}
!101 = !{!102, !41, i64 0}
!102 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !41, i64 0, !41, i64 8, !41, i64 16, !46, i64 24}
!103 = !{!104, !46, i64 4}
!104 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !76, i64 0, !46, i64 4, !46, i64 8, !41, i64 16, !41, i64 24}
!105 = !{!"branch_weights", i32 2, i32 1}
!106 = !{!104, !41, i64 24}
!107 = !{!104, !41, i64 16}
!108 = !{!"function_entry_count", i64 833744}
!109 = !{!110, !41, i64 40}
!110 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !111, i64 8, !41, i64 16, !46, i64 24, !41, i64 32, !41, i64 40}
!111 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
!112 = !{!113, !41, i64 32}
!113 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !41, i64 0, !76, i64 8, !41, i64 16, !46, i64 24, !46, i64 28, !41, i64 32}
!114 = !{!113, !46, i64 24}
!115 = !{!113, !41, i64 0}
!116 = !{!113, !41, i64 16}
!117 = !{!102, !46, i64 24}
!118 = !{!102, !41, i64 16}
!119 = distinct !{!119, !50}
