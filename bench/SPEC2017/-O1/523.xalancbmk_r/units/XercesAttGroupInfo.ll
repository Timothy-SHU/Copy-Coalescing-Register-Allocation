; ModuleID = 'XercesAttGroupInfo.cpp'
source_filename = "XercesAttGroupInfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_718XercesAttGroupInfoE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XercesAttGroupInfoE, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv, ptr @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [19 x i8] c"XercesAttGroupInfo\00", align 1
@_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718XercesAttGroupInfoE = dso_local constant [36 x i8] c"N11xercesc_2_718XercesAttGroupInfoE\00", align 1
@_ZTIN11xercesc_2_718XercesAttGroupInfoE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XercesAttGroupInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = external global %"class.xercesc_2_7::XProtoType", align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_718XercesAttGroupInfoC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoC1EjjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #7
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(120) %19) #7
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718XercesAttGroupInfo17containsAttributeEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %1, null
  br label %13

13:                                               ; preds = %11, %50
  %14 = phi i32 [ 0, %11 ], [ %51, %50 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !48
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %14)
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !62
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %50

22:                                               ; preds = %13
  %23 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %18, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  %26 = or i1 %12, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i16, ptr %24, align 2, !tbaa !65
  %29 = load i16, ptr %1, align 2, !tbaa !65
  %30 = icmp eq i16 %28, %29
  br i1 %30, label %39, label %50

31:                                               ; preds = %22
  br i1 %25, label %35, label %32

32:                                               ; preds = %31
  %33 = load i16, ptr %24, align 2, !tbaa !65
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32, %31
  br i1 %12, label %53, label %36

36:                                               ; preds = %35
  %37 = load i16, ptr %1, align 2, !tbaa !65
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %53, label %50

39:                                               ; preds = %27, %44
  %40 = phi i16 [ %47, %44 ], [ %28, %27 ]
  %41 = phi ptr [ %46, %44 ], [ %1, %27 ]
  %42 = phi ptr [ %45, %44 ], [ %24, %27 ]
  %43 = icmp eq i16 %40, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i16, ptr %42, i64 1
  %46 = getelementptr inbounds i16, ptr %41, i64 1
  %47 = load i16, ptr %45, align 2, !tbaa !65
  %48 = load i16, ptr %46, align 2, !tbaa !65
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !67

50:                                               ; preds = %44, %27, %36, %32, %13
  %51 = add nuw i32 %14, 1
  %52 = icmp eq i32 %51, %9
  br i1 %52, label %53, label %13, !llvm.loop !70

53:                                               ; preds = %35, %36, %50, %39, %3, %7
  %54 = phi i1 [ false, %7 ], [ false, %3 ], [ true, %39 ], [ false, %50 ], [ true, %36 ], [ true, %35 ]
  ret i1 %54
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #7
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %1, null
  br label %16

13:                                               ; preds = %55
  %14 = add nuw i32 %18, 1
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %58, label %16, !llvm.loop !74

16:                                               ; preds = %11, %13
  %17 = phi ptr [ undef, %11 ], [ %57, %13 ]
  %18 = phi i32 [ 0, %11 ], [ %14, %13 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !48
  %20 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %18)
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !62
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %55

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  %30 = or i1 %12, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr %1, align 2, !tbaa !65
  %33 = load i16, ptr %28, align 2, !tbaa !65
  %34 = icmp eq i16 %32, %33
  br i1 %34, label %44, label %55

35:                                               ; preds = %26
  br i1 %12, label %39, label %36

36:                                               ; preds = %35
  %37 = load i16, ptr %1, align 2, !tbaa !65
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36, %35
  br i1 %29, label %43, label %40

40:                                               ; preds = %39
  %41 = load i16, ptr %28, align 2, !tbaa !65
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %39
  br label %55

44:                                               ; preds = %31, %49
  %45 = phi i16 [ %52, %49 ], [ %32, %31 ]
  %46 = phi ptr [ %51, %49 ], [ %28, %31 ]
  %47 = phi ptr [ %50, %49 ], [ %1, %31 ]
  %48 = icmp ne i16 %45, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  %51 = getelementptr inbounds i16, ptr %46, i64 1
  %52 = load i16, ptr %50, align 2, !tbaa !65
  %53 = load i16, ptr %51, align 2, !tbaa !65
  %54 = icmp eq i16 %52, %53
  br i1 %54, label %44, label %55, !llvm.loop !67

55:                                               ; preds = %49, %44, %31, %43, %16, %36, %40
  %56 = phi i1 [ true, %40 ], [ true, %36 ], [ true, %16 ], [ false, %43 ], [ true, %31 ], [ %48, %44 ], [ %48, %49 ]
  %57 = phi ptr [ %17, %40 ], [ %17, %36 ], [ %17, %16 ], [ %20, %43 ], [ %17, %31 ], [ %17, %49 ], [ %20, %44 ]
  br i1 %56, label %13, label %58

58:                                               ; preds = %13, %55, %7, %3
  %59 = phi ptr [ null, %3 ], [ null, %7 ], [ %57, %55 ], [ null, %13 ]
  ret ptr %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %2, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %2, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %2, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %2, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %0, ptr %7, align 8, !tbaa !47
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = load i16, ptr %1, align 8, !tbaa !75
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %22

6:                                                ; preds = %2
  %7 = load i8, ptr %5, align 8, !tbaa !38, !range !78, !noundef !79
  %8 = icmp ne i8 %7, 0
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %21)
  br label %32

22:                                               ; preds = %2
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %24 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24)
  %26 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %28, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %29 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %29, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %30 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %31 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE)
  store ptr %31, ptr %30, align 8, !tbaa !73
  br label %32

32:                                               ; preds = %22, %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !40, i64 0, !41, i64 8, !43, i64 12, !43, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!40 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!41 = !{!"bool", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!39, !43, i64 12}
!46 = !{!39, !43, i64 16}
!47 = !{!39, !44, i64 48}
!48 = !{!39, !44, i64 24}
!49 = !{!39, !44, i64 32}
!50 = !{!39, !44, i64 40}
!51 = !{!52, !43, i64 12}
!52 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !41, i64 8, !43, i64 12, !43, i64 16, !44, i64 24, !44, i64 32}
!53 = !{!54, !44, i64 72}
!54 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !55, i64 0, !43, i64 56, !59, i64 60, !60, i64 64, !61, i64 68, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112}
!55 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !40, i64 0, !56, i64 8, !57, i64 12, !58, i64 16, !41, i64 20, !41, i64 21, !43, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!56 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !42, i64 0}
!57 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !42, i64 0}
!58 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !42, i64 0}
!59 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !42, i64 0}
!60 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !42, i64 0}
!61 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !42, i64 0}
!62 = !{!63, !43, i64 20}
!63 = !{!"_ZTSN11xercesc_2_75QNameE", !40, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!64 = !{!63, !44, i64 32}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !42, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
!71 = !{!52, !44, i64 32}
!72 = !{!52, !44, i64 24}
!73 = !{!44, !44, i64 0}
!74 = distinct !{!74, !68, !69}
!75 = !{!76, !66, i64 0}
!76 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !66, i64 0, !66, i64 2, !44, i64 8, !44, i64 16, !44, i64 24, !77, i64 32, !77, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !43, i64 96}
!77 = !{!"long", !42, i64 0}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!81, !44, i64 40}
!81 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !82, i64 8, !44, i64 16, !43, i64 24, !44, i64 32, !44, i64 40}
!82 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
