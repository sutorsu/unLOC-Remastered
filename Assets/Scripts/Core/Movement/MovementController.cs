﻿using System;
using System.Linq;

using Cysharp.Threading.Tasks.Linq;

using SevenDays.unLOC.Core.Movement.Demo;

using UnityEngine;

using VContainer.Unity;

namespace SevenDays.unLOC.Core.Movement
{
    public class MovementController : IStartable, IDisposable
    {
        private readonly TapZoneView _tapZoneView;
        private readonly IMovementService _movementService;
        private readonly IMovable _playerView;
        private readonly InputService _inputService;

        public MovementController(IMovable playerView, IMovementService movementService, TapZoneView tapZoneView,
            InputService inputService)
        {
            _playerView = playerView;
            _movementService = movementService;
            _tapZoneView = tapZoneView;
            _inputService = inputService;
        }

        public void Start()
        {
            _tapZoneView.Clicked += OnClickedToTapZone;
            _playerView.IsActive = true;
            _inputService.HorizontalInput.WithoutCurrent().Subscribe(OnHorizontalInputChange);
            _playerView.StopMoving();
        }

        private void OnHorizontalInputChange(float direction)
        {
            if (direction == 0)
            {
                if (!_playerView.IsMoving && _inputService.LastDirection != 0)
                    _playerView.StopMoving();
                return;
            }
            _playerView.Move(direction);
        }


        private void OnClickedToTapZone(Vector3 point)
        {
            var xClickPosition = point.x;

            _movementService.StartMove(_playerView, Vector3.right * xClickPosition);
        }

        public void Dispose()
        {
            _tapZoneView.Clicked -= OnClickedToTapZone;
        }
    }
}