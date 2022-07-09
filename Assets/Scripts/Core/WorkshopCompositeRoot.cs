﻿using SevenDays.DialogSystem.Components;
using SevenDays.DialogSystem.Runtime;
using SevenDays.Localization;
using SevenDays.unLOC.Core.Animations;
using SevenDays.unLOC.Core.Animations.Config;
using SevenDays.unLOC.Core.Movement;
using SevenDays.unLOC.Inventory.Services;
using SevenDays.unLOC.Inventory.Views;

using UnityEngine;

using VContainer;
using VContainer.Unity;

namespace SevenDays.unLOC.Core
{
    public class WorkshopCompositeRoot : AutoInjectableLifeTimeScope
    {
        [SerializeField]
        private InventoryCellView _cellPrefab;

        [SerializeField]
        private InventoryView _inventoryView;

        [Space]
        [SerializeField]
        private PlayerView _playerView;

        [SerializeField]
        private AnimationConfig _animationConfig;

        [SerializeField]
        private TapZoneView _tapZoneView;

        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterComponentInHierarchy<AutoInjectableLifeTimeScope>()
                .AsImplementedInterfaces()
                .AsSelf();

            RegisterInventory(builder);
            RegisterDialogues(builder);
            RegisterMovement(builder);
        }

        private void RegisterInventory(IContainerBuilder builder)
        {
            builder.Register<InventoryService>(Lifetime.Singleton)
                .WithParameter(_cellPrefab)
                .WithParameter(_inventoryView)
                .AsImplementedInterfaces();
        }

        private void RegisterDialogues(IContainerBuilder builder)
        {
            builder.Register<LocalizationService>(Lifetime.Singleton).AsSelf();
            builder.Register<DialogService>(Lifetime.Singleton).AsSelf();
        }

        private void RegisterMovement(IContainerBuilder builder)
        {
            builder.RegisterComponent(_tapZoneView);
            builder.RegisterInstance(_animationConfig);
            builder.RegisterInstance(_playerView).AsImplementedInterfaces();
            builder.Register<IMovementService, MovementService>(Lifetime.Singleton);
            builder.RegisterEntryPoint<InputService>().AsSelf();
            builder.RegisterEntryPoint<MovementController>();
            builder.RegisterEntryPoint<PlayerAnimationController>();
        }
    }
}