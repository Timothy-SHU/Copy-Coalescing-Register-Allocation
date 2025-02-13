; ModuleID = 'MsgFileOutputStream.cpp'
source_filename = "MsgFileOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.XalanFileOutputStream = type { ptr, ptr, ptr }
%"class.XalanFileOutputStream::XalanFileOutputStreamOpenException" = type { ptr, ptr }
%"class.XalanFileOutputStream::XalanFileOutputStreamWriteException" = type { ptr, ptr }

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev, ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev] }, align 8
@_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant [62 x i8] c"N21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE\00", align 1
@_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE }, align 8
@_ZTV21XalanFileOutputStream = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI21XalanFileOutputStream, ptr @_ZN21XalanFileOutputStreamD2Ev, ptr @_ZN21XalanFileOutputStreamD0Ev] }, align 8
@_ZTS21XalanFileOutputStream = dso_local constant [24 x i8] c"21XalanFileOutputStream\00", align 1
@_ZTI21XalanFileOutputStream = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS21XalanFileOutputStream }, align 8
@_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev, ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev] }, align 8
@_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant [63 x i8] c"N21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE\00", align 1
@_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE }, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error opening file: \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c".  The C++ run-time error code (errno) is \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Error writing file: \00", align 1
@_ZL20s_UTF16ByteOrderMark = internal constant [2 x i16] [i16 -257, i16 0], align 2

@_ZN21XalanFileOutputStreamC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN21XalanFileOutputStreamC2EPKc
@_ZN21XalanFileOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStreamD2Ev
@_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci
@_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev
@_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci
@_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN21XalanFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStreamC2EPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV21XalanFileOutputStream, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %5 = tail call fastcc noundef ptr @_ZL8openFilePKc(ptr noundef %1) #14
  store ptr %5, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  %9 = tail call ptr @__errno_location() #16
  %10 = load i32, ptr %9, align 4, !tbaa !44
  invoke void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr poison, i32 noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr nonnull @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @_ZL8openFilePKc(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !46 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #14
  ret ptr %2
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStreamD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV21XalanFileOutputStream, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream7doFlushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call i32 @fflush(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  %8 = tail call ptr @__errno_location() #16
  %9 = load i32, ptr %8, align 4, !tbaa !44
  invoke void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr poison, i32 noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef %6) #14
  %8 = icmp eq i64 %7, %4
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  %11 = tail call ptr @__errno_location() #16
  %12 = load i32, ptr %11, align 4, !tbaa !44
  invoke void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr poison, i32 noundef %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #17
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #2 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamOpenException", ptr %0, i64 0, i32 1
  %5 = tail call fastcc noundef ptr @_ZL18FormatMessageLocalPKcS0_i(ptr noundef nonnull @.str.1, i32 noundef %2) #14
  store ptr %5, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull ptr @_ZL18FormatMessageLocalPKcS0_i(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !35 !PGOFuncName !49 {
  %3 = alloca [20 x i8], align 16
  %4 = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #18
  store i8 0, ptr %4, align 1, !tbaa !50
  %5 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 100) #12
  %6 = getelementptr inbounds i8, ptr %4, i64 100
  store i8 0, ptr %6, align 1, !tbaa !50
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %8, ptr noundef nonnull align 1 dereferenceable(43) @.str.2, i64 43, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  store i8 0, ptr %3, align 16, !tbaa !50
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1) #12
  %10 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 18) #12
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  store i16 46, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  ret ptr %4
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamOpenException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #2 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamWriteException", ptr %0, i64 0, i32 1
  %5 = tail call fastcc noundef ptr @_ZL18FormatMessageLocalPKcS0_i(ptr noundef nonnull @.str.5, i32 noundef %2) #14
  store ptr %5, ptr %4, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamWriteException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream5writeEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  %4 = shl i32 %2, 1
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream5writeEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef %1) #14
  store ptr %5, ptr %4, align 8, !tbaa !53
  tail call void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i32 noundef %2) #14
  call void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %1) #14
  store ptr %5, ptr %4, align 8, !tbaa !53
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i32 noundef %2) #14
  call void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21XalanFileOutputStream14writeUTFprefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZL20s_UTF16ByteOrderMark, i32 noundef 1) #14
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTS21XalanFileOutputStream", !41, i64 8, !41, i64 16}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !38, i64 0}
!43 = !{!40, !41, i64 16}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !42, i64 0}
!46 = !{!"MsgFileOutputStream.cpp:_ZL8openFilePKc"}
!47 = !{!48, !41, i64 8}
!48 = !{!"_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE", !41, i64 8}
!49 = !{!"MsgFileOutputStream.cpp:_ZL18FormatMessageLocalPKcS0_i"}
!50 = !{!42, !42, i64 0}
!51 = !{!52, !41, i64 8}
!52 = !{!"_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE", !41, i64 8}
!53 = !{!41, !41, i64 0}
