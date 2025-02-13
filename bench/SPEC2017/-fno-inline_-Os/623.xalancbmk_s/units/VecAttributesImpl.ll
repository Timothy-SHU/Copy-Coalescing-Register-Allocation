; ModuleID = 'VecAttributesImpl.cpp'
source_filename = "VecAttributesImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::VecAttributesImpl" = type { %"class.xercesc_2_7::Attributes", i8, i32, ptr, ptr }
%"class.xercesc_2_7::Attributes" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710AttributesC2Ev = comdat any

$_ZN11xercesc_2_710AttributesD2Ev = comdat any

$_ZN11xercesc_2_710AttributesD0Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getTypeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZTSN11xercesc_2_710AttributesE = comdat any

$_ZTIN11xercesc_2_710AttributesE = comdat any

$_ZTVN11xercesc_2_710AttributesE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_717VecAttributesImplE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717VecAttributesImplE, ptr @_ZN11xercesc_2_717VecAttributesImplD2Ev, ptr @_ZN11xercesc_2_717VecAttributesImplD0Ev, ptr @_ZNK11xercesc_2_717VecAttributesImpl9getLengthEv, ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKt, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKt, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKt] }, align 8
@_ZTSN11xercesc_2_717VecAttributesImplE = dso_local constant [35 x i8] c"N11xercesc_2_717VecAttributesImplE\00", align 1
@_ZTSN11xercesc_2_710AttributesE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710AttributesE\00", comdat, align 1
@_ZTIN11xercesc_2_710AttributesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710AttributesE }, comdat, align 8
@_ZTIN11xercesc_2_717VecAttributesImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717VecAttributesImplE, ptr @_ZTIN11xercesc_2_710AttributesE }, align 8
@_ZTVN11xercesc_2_710AttributesE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_710AttributesD2Ev, ptr @_ZN11xercesc_2_710AttributesD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717VecAttributesImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717VecAttributesImplC2Ev
@_ZN11xercesc_2_717VecAttributesImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717VecAttributesImplD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717VecAttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !60
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %14, !prof !69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %1) #12
  %12 = tail call noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %11) #12
  %13 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %8, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11, !prof !73

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #12
  %10 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #12
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11, !prof !75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #12
  %10 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #12
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %14, !prof !69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #12
  %10 = tail call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #12
  %11 = load ptr, ptr %7, align 8, !tbaa !71
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #12
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %10, ptr noundef %12) #12
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11, !prof !69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #12
  %10 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #12
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1023, ptr noundef %7) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  br label %13

13:                                               ; preds = %11, %31
  %14 = phi i32 [ 0, %11 ], [ %32, %31 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !71
  %16 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %14) #12
          to label %17 unwind label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !70
  %19 = invoke noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %16) #12
          to label %20 unwind label %29

20:                                               ; preds = %17
  %21 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef %19, ptr noundef nonnull align 8 dereferenceable(40) %4) #12
          to label %22 unwind label %29

22:                                               ; preds = %20
  %23 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %16) #12
          to label %24 unwind label %29

24:                                               ; preds = %22
  %25 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %23, ptr noundef %2) #12
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %28 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %27, ptr noundef %1) #12
  br i1 %28, label %35, label %31

29:                                               ; preds = %22, %20, %17, %13
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  resume { ptr, i32 } %30

31:                                               ; preds = %24, %26
  %32 = add nuw i32 %14, 1
  %33 = load i32, ptr %8, align 4, !tbaa !60
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %13, label %35, !llvm.loop !77

35:                                               ; preds = %31, %26, %3
  %36 = phi i32 [ -1, %3 ], [ %14, %26 ], [ -1, %31 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  ret i32 %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !76 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %14
  %9 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !71
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %9) #12
  %12 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %11) #12
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %12, ptr noundef %1) #12
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = add nuw i32 %9, 1
  %16 = load i32, ptr %3, align 4, !tbaa !60
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %8, label %18, !llvm.loop !79

18:                                               ; preds = %8, %14, %2
  %19 = phi i32 [ -1, %2 ], [ -1, %14 ], [ %9, %8 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !76 {
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %7) #12
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %6) #12
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !76 {
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %7) #12
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %6) #12
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_717VecAttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !83
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !82 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_710AttributesE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !82 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !82 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_717VecAttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !83, !range !84, !noundef !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !86

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #10
  br label %13

13:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !90

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  ret i32 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !102
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 !prof !105 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !112 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !113
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !115
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !117
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !118
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !119
  store i16 0, ptr %16, align 2, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !123

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !120
  %8 = load i16, ptr %1, align 2, !tbaa !120
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !124

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !125

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !120
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !126

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !127

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !120
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !128

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !129

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !120
  %28 = load i16, ptr %26, align 2, !tbaa !120
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !130, !llvm.loop !131

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = load i32, ptr %0, align 8, !tbaa !113
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = load ptr, ptr %3, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 !prof !134 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !83, !range !84, !noundef !85
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9, !prof !135

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !80
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #10
  br label %17

17:                                               ; preds = %9, %13, %5
  %18 = zext i1 %4 to i8
  store i8 %18, ptr %6, align 8, !tbaa !83
  %19 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %20, align 8, !tbaa !71
  %21 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %21, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!58}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!36 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 200912}
!37 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, i64 200912}
!38 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 200912}
!39 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 2}
!40 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj, ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, i64 2}
!41 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 401828}
!42 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 401828}
!43 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 200912}
!44 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZNK11xercesc_2_77XMLAttr7getTypeEv, i64 200912}
!45 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv, i64 200912}
!46 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, i64 200912}
!47 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 200912}
!48 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 200912}
!49 = !{ptr @_ZN11xercesc_2_717VecAttributesImplC2Ev, ptr @_ZN11xercesc_2_710AttributesC2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_717VecAttributesImplD2Ev, ptr @_ZN11xercesc_2_710AttributesD2Ev, i64 1}
!51 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!52 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!54 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!55 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!56 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!57 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 1211984}
!60 = !{!61, !66, i64 12}
!61 = !{!"_ZTSN11xercesc_2_717VecAttributesImplE", !62, i64 0, !63, i64 8, !66, i64 12, !67, i64 16, !67, i64 24}
!62 = !{!"_ZTSN11xercesc_2_710AttributesE"}
!63 = !{!"bool", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!"int", !64, i64 0}
!67 = !{!"any pointer", !64, i64 0}
!68 = !{!"function_entry_count", i64 200913}
!69 = !{!"branch_weights", i32 200914, i32 1}
!70 = !{!61, !67, i64 24}
!71 = !{!61, !67, i64 16}
!72 = !{!"function_entry_count", i64 2}
!73 = !{!"branch_weights", i32 3, i32 1}
!74 = !{!"function_entry_count", i64 401829}
!75 = !{!"branch_weights", i32 401830, i32 1}
!76 = !{!"function_entry_count", i64 0}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !65, i64 0}
!82 = !{!"function_entry_count", i64 1}
!83 = !{!61, !63, i64 8}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!"branch_weights", i32 2, i32 1}
!87 = !{!"function_entry_count", i64 1366334}
!88 = !{!89, !66, i64 12}
!89 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !63, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32}
!90 = !{!"branch_weights", i32 1366335, i32 1}
!91 = !{!89, !67, i64 32}
!92 = !{!89, !67, i64 24}
!93 = !{!67, !67, i64 0}
!94 = !{!"function_entry_count", i64 360316}
!95 = !{!96, !67, i64 24}
!96 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !63, i64 0, !97, i64 4, !66, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !63, i64 48}
!97 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !64, i64 0}
!98 = !{!99, !67, i64 40}
!99 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !100, i64 8, !67, i64 16, !66, i64 24, !67, i64 32, !67, i64 40}
!100 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !64, i64 0}
!101 = !{!"function_entry_count", i64 6553673}
!102 = !{!103, !66, i64 20}
!103 = !{!"_ZTSN11xercesc_2_75QNameE", !104, i64 0, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48}
!104 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!105 = !{!"function_entry_count", i64 159625}
!106 = !{!"function_entry_count", i64 2192223}
!107 = !{!103, !67, i64 32}
!108 = !{!"function_entry_count", i64 201563}
!109 = !{!96, !97, i64 4}
!110 = !{!"function_entry_count", i64 360600}
!111 = !{!96, !67, i64 16}
!112 = !{!"function_entry_count", i64 496321}
!113 = !{!114, !66, i64 0}
!114 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !66, i64 0, !66, i64 4, !66, i64 8, !63, i64 12, !67, i64 16, !67, i64 24, !67, i64 32}
!115 = !{!114, !66, i64 4}
!116 = !{!114, !66, i64 8}
!117 = !{!114, !63, i64 12}
!118 = !{!114, !67, i64 16}
!119 = !{!114, !67, i64 32}
!120 = !{!121, !121, i64 0}
!121 = !{!"short", !64, i64 0}
!122 = !{!"function_entry_count", i64 1231717351}
!123 = !{!"branch_weights", i32 621, i32 -1469098093}
!124 = !{!"branch_weights", i32 408901017, i32 1}
!125 = !{!"branch_weights", i32 267, i32 4}
!126 = !{!"branch_weights", i32 1, i32 4}
!127 = !{!"branch_weights", i32 156, i32 112}
!128 = !{!"branch_weights", i32 1, i32 112}
!129 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!130 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!131 = distinct !{!131, !78}
!132 = !{!"function_entry_count", i64 10769804}
!133 = !{!"function_entry_count", i64 5836268}
!134 = !{!"function_entry_count", i64 832911}
!135 = !{!"branch_weights", i32 832912, i32 1}
